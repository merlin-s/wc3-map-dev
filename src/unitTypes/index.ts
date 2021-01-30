export enum BaseType {
    Tier0 =  FourCC('hbar')
};

export enum SpawnType {
    Footman =  FourCC('hfoo')
};

export const HeroTypes: number[] = [
    // Human
    FourCC('Hamg'),
    FourCC('Hblm'),
    FourCC('Hmkg'),
    FourCC('Hpal'),
    
        // Orc
    FourCC('Obla'),
    FourCC('Ofar'),
    FourCC('Oshd'),
    FourCC('Otch'),
    
        // Undead
    FourCC('Ucrl'),
    FourCC('Udea'),
    FourCC('Udre'),
    FourCC('Ulic'),
    
        // NightElf
    FourCC('Edem'),
    FourCC('Ekee'),
    FourCC('Emoo'),
    FourCC('Ewar'),
    
        // Custom
    FourCC('Eevi'),
];