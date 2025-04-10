import UIKit

final class MenuViewController: UITableViewController {
    private let sections = ResumeSection.allCases
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "DefaultCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) ?? UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        let item = sections[indexPath.section].items[indexPath.row]
        cell.textLabel?.text = NSLocalizedString(item.title, comment: item.title)
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = sections[indexPath.section].items[indexPath.row]
        switch item {
        default:
            break
        }
    }
}

extension MenuViewController {
    enum ResumeSection: Int, CaseIterable {
        case resume
        case storyboardSamples
        case swiftUISamples

        var title: String {
            switch self {
            case .resume: return "Resume"
            case .storyboardSamples: return "Storyboard Samples"
            case .swiftUISamples: return "SwiftUI Samples"
            }
        }
        
        var items: [SectionItem] {
            switch self {
            case .resume:
                return [.aboutMe, .skills, .experience, .projects, .education, .awards, .philosophy]
            case .storyboardSamples:
                return [.audioPlayer, .youtubePlayer, .shaders]
            case .swiftUISamples:
                return [.brickOutGameSwiftUI, .appStoreSwiftUI]
            }
        }
    }
    
    enum SectionItem: String {
        // resume
        case aboutMe, skills, experience, projects, education, awards, philosophy
        // storyboard samples
        case audioPlayer, youtubePlayer, shaders, todayHouse, karrot
        // swiftUI samples
        case brickOutGameSwiftUI, appStoreSwiftUI
        
        var title: String {
            switch self {
            case .aboutMe: return "About Me"
            case .skills: return "Skills"
            case .experience: return "Experience"
            case .projects: return "Projects"
            case .education: return "Education"
            case .awards: return "Awards"
            case .philosophy: return "Philosophy"
            case .shaders: return "Shaders"
            case .audioPlayer: return "Audio Player"
            case .youtubePlayer: return "YouTube Player"
            case .brickOutGameSwiftUI: return "Brick Out Game (SwiftUI)"
            case .appStoreSwiftUI: return "App Store (SwiftUI)"
            case .todayHouse: return "Today House"
            case .karrot: return "Karrot"
            }
        }
    }
}
