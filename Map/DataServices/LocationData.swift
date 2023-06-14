//
//  LocationData.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import Foundation
import MapKit

class LocationData {
    
    static let locations: [LocationModel] = [
        LocationModel(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        LocationModel(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        LocationModel(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        LocationModel(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        LocationModel(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        LocationModel(
            name: "Minar-e-Pakistan",
            cityName: "Lahore",
            coordinates: CLLocationCoordinate2D(latitude: 31.5925, longitude: 74.3095),
            description: "Minar E Pakistan (Urdu: مینارِ پاکستان, literally  \"Tower of Pakistan\") is a tower located in Lahore, Pakistan. The tower was built between 1960 and 1968 on the site where the All-India Muslim League passed the Lahore Resolution (which was later called the Pakistan Resolution) on 23 March 1940 - the first official call for a separate and independent homeland for the Muslims of British India, as espoused by the two-nation theory. The resolution eventually helped lead to the creation of Pakistan in 1947. The tower is located in the middle of an urban park, called the Greater Iqbal Park.",
            imageNames: [
            "minar-e-pakistan-1",
            "minar-e-pakistan-2",
            "minar-e-pakistan-3",
           "minar-e-pakistan-4"
            ],
            link: "https://en.wikipedia.org/wiki/Minar-e-Pakistan"),
        LocationModel(
            name: "Badshahi Mosque",
            cityName: "Lahore",
            coordinates: CLLocationCoordinate2D(latitude: 31.5880, longitude: 74.3107),
            description: "The Badshahi Mosque (Urdu, Punjabi: بادشاہی مسجد; literally The Royal Mosque) is a Mughal-era congregational mosque in Lahore, capital of the Pakistani province of Punjab. The mosque is located west of Lahore Fort along the outskirts of the Walled City of Lahore, and is widely considered to be one of Lahore's most iconic landmarks.The Badshahi Mosque was built between 1671 and 1673 and by the Mughal emperor Aurangzeb. The mosque is an important example of Mughal architecture, with an exterior that is decorated with carved red sandstone with marble inlay. It remains the largest mosque of the Mughal-era, and is the third-largest mosque in Pakistan. In 1799, during the rule of Ranjit Singh of the Sikh Empire, the mosque's courtyard was used as a stable and its hujras (cells) as soldiers quarters. When the British Empire took control of Lahore in 1846 it was used as a garrison until 1852. Subsequently the Badshahi Mosque Authority was established to oversee its restoration as a place of worship. It is now one of Pakistan's most iconic sights.",
            imageNames: [
            "badshahi-mosque-1",
            "badshahi-mosque-2",
            "badshahi-mosque-3",
            "badshahi-mosque-4"
            ],
            link: "https://en.wikipedia.org/wiki/Badshahi_Mosque")
    ]
    
}
