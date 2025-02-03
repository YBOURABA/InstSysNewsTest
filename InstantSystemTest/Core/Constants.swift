//
//  Constants.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

enum Constants {
    // baseURL should be stored somewhere else in a setting file (e.g. plist file, xconfig, etc.)
    static let baseURL: String = "https://newsapi.org/v2/"

    // To localize
    static let news: String = "À la une"

    // To localize
    enum Errors {
        static let badURL: String = "Problème de formatage de l’URL."
        static let requestError: String = "La requête a renvoyé une erreur."
        static let decodingError: String = "Impossible de traiter la réponse du serveur."
        static let badURLRecoveryMsg: String = "Veuillez réessayer plus tard ou contacter le support."
        static let requestErrorRecoveryMsg: String = "Impossible de traiter votre demande. Vérifiez votre connexion Internet et réessayez plus tard."
        static let decodingErrorRecoveryMsg: String = "Nous avons rencontré un problème lors du traitement des données. Veuillez réessayer plus tard."
    }

    // To localize
    enum Overlays {
        static let loadingTitle: String = "Recherche d'actualités ..."
        static let loadingMsg: String = "En train de rechercher des actualités pour vous 😊"
        static let emptyTitle: String = "Aucune nouvelle disponible"
        static let emptyMsg: String = "Nous n’avons trouvé aucune nouvelle pour vous 😕"
        static let reload: String = "Recharger"
    }
}
