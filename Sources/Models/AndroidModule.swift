//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AndroidModule: APIModel {

    /** Name of the Android module */
    public var name: String

    /** The detected build configurations of the Android module */
    public var buildConfigurations: [BuildConfigurations]?

    /** The detected build types of the Android module */
    public var buildTypes: [String]?

    /** The detected build variants of the Android module (matrix of product flavor + build type (debug|release)) */
    public var buildVariants: [String]?

    /** Module contains bundle settings */
    public var hasBundle: Bool?

    /** Whether the module is at the root level of the project */
    public var isRoot: Bool?

    /** The product flavors of the Android module */
    public var productFlavors: [String]?

    public init(name: String, buildConfigurations: [BuildConfigurations]? = nil, buildTypes: [String]? = nil, buildVariants: [String]? = nil, hasBundle: Bool? = nil, isRoot: Bool? = nil, productFlavors: [String]? = nil) {
        self.name = name
        self.buildConfigurations = buildConfigurations
        self.buildTypes = buildTypes
        self.buildVariants = buildVariants
        self.hasBundle = hasBundle
        self.isRoot = isRoot
        self.productFlavors = productFlavors
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case buildConfigurations
        case buildTypes
        case buildVariants
        case hasBundle
        case isRoot
        case productFlavors
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(.name)
        buildConfigurations = try container.decodeArrayIfPresent(.buildConfigurations)
        buildTypes = try container.decodeArrayIfPresent(.buildTypes)
        buildVariants = try container.decodeArrayIfPresent(.buildVariants)
        hasBundle = try container.decodeIfPresent(.hasBundle)
        isRoot = try container.decodeIfPresent(.isRoot)
        productFlavors = try container.decodeArrayIfPresent(.productFlavors)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(buildConfigurations, forKey: .buildConfigurations)
        try container.encodeIfPresent(buildTypes, forKey: .buildTypes)
        try container.encodeIfPresent(buildVariants, forKey: .buildVariants)
        try container.encodeIfPresent(hasBundle, forKey: .hasBundle)
        try container.encodeIfPresent(isRoot, forKey: .isRoot)
        try container.encodeIfPresent(productFlavors, forKey: .productFlavors)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AndroidModule else { return false }
      guard self.name == object.name else { return false }
      guard self.buildConfigurations == object.buildConfigurations else { return false }
      guard self.buildTypes == object.buildTypes else { return false }
      guard self.buildVariants == object.buildVariants else { return false }
      guard self.hasBundle == object.hasBundle else { return false }
      guard self.isRoot == object.isRoot else { return false }
      guard self.productFlavors == object.productFlavors else { return false }
      return true
    }

    public static func == (lhs: AndroidModule, rhs: AndroidModule) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
