---

### 1. Comparison table (Salmonella context)

| Gene                          | Pathway / module (in Salmonella)                                             | Enzymatic function (Salmonella ortholog)                                                                                                                                                                                                                                                                                                        | LPS / envelope structure affected                                                                                                                                                                                                                                                                                                                       | Reported Salmonella mutant phenotypes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Virulence / host interaction data in Salmonella                                                                                                                                                                                                                                                                                                                                                                                                     | Example serovars / strains studied                                                                                                                                                                                                                                                                                |
| ----------------------------- | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **gmhB** (yaeD)               | **ADP-heptose biosynthesis → LPS inner core heptoses**                       | D,D-heptose-1,7-bisphosphate phosphatase; converts D,D-heptose-1,7-bisphosphate to D,D-heptose-1-phosphate, an early step toward ADP-D-glycero-D-manno-heptose. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC139585/?utm_source=chatgpt.com "Biosynthesis Pathway of ADP-l-glycero-β-d-manno- ..."))                                         | Inner core heptose region of LPS (heptose residues that link Kdo to outer core). ([ASM Journals](https://journals.asm.org/doi/10.1128/jb.00318-24?utm_source=chatgpt.com "Only time will tell: lipopolysaccharide glycoform and biofilm ..."))                                                                                                          | In Salmonella Typhimurium, **loss of gmhB** causes altered LPS core and can increase resistance to certain small-molecule antibiotics (e.g. D66, novobiocin, erythromycin) by modifying the outer membrane barrier. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40732029/?utm_source=chatgpt.com "Mutations in Genes with a Role in Cell Envelope Biosynthesis ..."))                                                                                                                                                                                                                                                                                                                                     | Heptose pathway (GmhA–HldE–GmhB–RfaD) is required for proper LPS core; perturbation affects envelope integrity, biofilm properties and fitness in host environments. In S. Typhimurium, gmhB mutations modulate antibiotic susceptibility and thus may alter survival during host-targeted therapy. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40732029/?utm_source=chatgpt.com "Mutations in Genes with a Role in Cell Envelope Biosynthesis ...")) | S. enterica subsp. enterica serovar Typhimurium (e.g. SL1344 and lab derivatives); pathway also documented in Typhi and other serovars by comparative genomics. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40732029/?utm_source=chatgpt.com "Mutations in Genes with a Role in Cell Envelope Biosynthesis ..."))   |
| **cydB**                      | **Terminal oxidase (cytochrome bd-I) in aerobic / microaerobic respiration** | Membrane subunit of cytochrome bd-I quinol oxidase (CydABX complex); part of high-affinity O₂ respiratory chain that uses quinol as electron donor and O₂ (or NO) as acceptor. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))                                | Not a structural LPS gene; affects **envelope physiology indirectly** via respiration, maintenance of PMF and resistance to nitrosative / oxidative stress. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))                                                           | ΔcydAB (or cydABX) mutants in S. Typhimurium show: reduced growth under microaerobic / NO stress, increased susceptibility to nitrosative stress and certain host-derived stresses; altered fitness in systemic infection models. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))                                                                                                                                                                                                                                                                                                                                     | Cytochrome bd promotes **survival in macrophages and systemic tissues**, especially under NO and low-O₂ conditions; cydAB mutants are attenuated in mouse infection models and show reduced competitive fitness in inflamed gut, making cytochrome bd a virulence-associated respiratory factor. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))                  | S. Typhimurium (SL1344, 14028s and derivatives) in macrophage, mouse systemic and gut-colonization models. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))                                                                      |
| **rfbB** (rmlB)               | **dTDP-L-rhamnose biosynthesis → O-antigen & ECA**                           | dTDP-D-glucose 4,6-dehydratase; converts dTDP-D-glucose to dTDP-6-deoxy-D-xylo-4-hexulose in the rhamnose pathway. In S. enterica, RfbB/RmlB structure and catalytic residues have been solved. ([UniProt](https://www.uniprot.org/uniprotkb/P26391/entry?utm_source=chatgpt.com "rfbB - dTDP-glucose 4,6-dehydratase"))                        | O-antigen (L-rhamnose–containing repeats) and enterobacterial common antigen (ECA); loss disrupts O-antigen and can affect ECA, leading to rough LPS and cell envelope defects. ([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S002228360094470X?utm_source=chatgpt.com "The crystal structure of dTDP-d-glucose 4,6-dehydratase ...")) | In S. Typhimurium, **ΔrfbB (often with ΔrffG)** causes: loss or severe reduction of O-antigen, altered colony morphology, cell shape defects, increased outer-membrane permeability, reduced motility and strong attenuation in colonization of Peyer’s patches, spleen and liver in mice. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40469742/?utm_source=chatgpt.com "Functional loss of rffG and rfbB, encoding dTDP-glucose 4, ..."))                                                                                                                                                                                                                                                                | O-antigen / ECA defects in rfbB mutants markedly reduce virulence in murine oral and intraperitoneal infection models, suggesting RfbB as a promising LPS-targeting drug or vaccine target in Salmonella. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40469742/?utm_source=chatgpt.com "Functional loss of rffG and rfbB, encoding dTDP-glucose 4, ..."))                                                                                             | S. Typhimurium (mouse infection models; structural work in S. enterica serovar Typhimurium RmlB). ([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S002228360094470X?utm_source=chatgpt.com "The crystal structure of dTDP-d-glucose 4,6-dehydratase ..."))                                         |
| **lpxA**                      | **First committed step of lipid A biosynthesis → LPS anchor**                | UDP-N-acetylglucosamine acyltransferase; transfers R-3-hydroxyacyl chain from acyl-ACP to UDP-GlcNAc to form UDP-3-O-acyl-GlcNAc, the first dedicated step in lipid A synthesis. ([欧洲分子生物学实验室-欧洲生物信息学研究所](https://www.ebi.ac.uk/interpro/protein/C0Q6K4?utm_source=chatgpt.com "UDP-N-acetylglucosamine O-acyltransferase (C0Q6K4) - protein")) | Lipid A (endotoxin) moiety that anchors LPS to the outer membrane. Any severe reduction in LpxA activity compromises lipid A and thus LPS assembly. ([欧洲分子生物学实验室-欧洲生物信息学研究所](https://www.ebi.ac.uk/interpro/protein/C0Q6K4?utm_source=chatgpt.com "UDP-N-acetylglucosamine O-acyltransferase (C0Q6K4) - protein"))                                      | Transposon-sequencing in S. Typhi shows lpxA lies in an **essential gene region** with virtually no insertions, implying essentiality for growth. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC2792183/?utm_source=chatgpt.com "Simultaneous assay of every Salmonella Typhi gene using ...")) In S. Typhimurium, systems-biology and drug-target prioritization studies identify lpxA as a core, high-priority envelope target; up- or down-regulation correlates with stress responses (e.g. phage, antibiotic pressure). ([PLOS](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0268889&utm_source=chatgpt.com "Dual transcriptome based reconstruction of Salmonella ...")) | Because lipid A is required for OM integrity, lpxA is critical for viability; perturbing LpxA can reduce LPS levels, alter colistin susceptibility and affect host recognition of Salmonella endotoxin, making LpxA an attractive, conserved antibacterial target. ([PLOS](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0268889&utm_source=chatgpt.com "Dual transcriptome based reconstruction of Salmonella ..."))         | S. enterica serovars Typhi and Typhimurium (Tn-seq and in-silico prioritization), plus broad Gram-negative mechanistic work extrapolated to Salmonella orthologs. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC2792183/?utm_source=chatgpt.com "Simultaneous assay of every Salmonella Typhi gene using ...")) |
| **rfaD** (hldD / waaD / AGME) | **Late ADP-heptose biosynthesis → LPS inner core heptoses**                  | ADP-L-glycero-D-manno-heptose-6-epimerase; converts ADP-D-glycero-D-manno-heptose to ADP-L-glycero-D-manno-heptose, the heptose donor for inner core heptosyltransferases. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/6337148/?utm_source=chatgpt.com "The rfaD gene codes for ADP-L-glycero-D-mannoheptose- ..."))                              | Inner core heptose residues of LPS; rfaD mutants have abnormal heptose stereochemistry and truncated or altered core, giving rough LPS chemotypes. ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))                                                    | In S. Typhimurium, rfaD mutants show temperature sensitivity, deep rough LPS, altered antibiotic susceptibility and severely reduced ability to act as recipients for some conjugative plasmids (due to core truncation). ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))                                                                                                                                                                                                                                                                                                                             | Proper ADP-L-heptose production (via RfaD and GmhB) is required for a complete inner core; ADP-heptose also acts as a cytosolic PAMP that activates the ALPK1 pathway in host cells, meaning rfaD defects can both weaken the bacterial envelope and modulate host innate immune sensing of Salmonella. ([MDPI](https://www.mdpi.com/2076-2607/11/5/1316?utm_source=chatgpt.com "The Role of ADP-Heptose in the Pathogenesis of Infection"))        | S. Typhimurium LT2 and related strains (classic LPS genetics and mapping of the rfa cluster). ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))                                                                   |

---

### 2. Brief per-gene notes + key Salmonella-relevant references

I’ve grouped a few of the more useful, **citable** papers for each gene so you can drop them straight into your writing.

#### gmhB (yaeD) – inner core ADP-heptose phosphatase

- **Pathway role** – Part of the conserved ADP-heptose biosynthesis pathway (GmhA–HldE–GmhB–RfaD) that supplies heptoses for the LPS inner core in Salmonella and E. coli. ([ASM Journals](https://journals.asm.org/doi/10.1128/jb.00318-24?utm_source=chatgpt.com "Only time will tell: lipopolysaccharide glycoform and biofilm ..."))
    
- **Phenotypes in Salmonella** – In S. Typhimurium, spontaneous and engineered gmhB mutations alter LPS core and can **increase resistance to certain antibiotics and small molecules (e.g. D66, novobiocin, erythromycin)** by changing outer-membrane permeability. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40732029/?utm_source=chatgpt.com "Mutations in Genes with a Role in Cell Envelope Biosynthesis ..."))
    
- **Heptose & immunity** – ADP-heptose (product of the shared GmhB/RfaD pathway) is now recognized as a **novel PAMP** sensed by ALPK1, linking gmhB activity to host innate immune signaling through ADP-heptose release. ([MDPI](https://www.mdpi.com/2076-2607/11/5/1316?utm_source=chatgpt.com "The Role of ADP-Heptose in the Pathogenesis of Infection"))
    

**Example references**

- Allgood SC et al. _Mutations in genes with a role in cell envelope biosynthesis confer resistance to a small-molecule anti-infective in E. coli and Salmonella Typhimurium._ Microorganisms, 2025. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40732029/?utm_source=chatgpt.com "Mutations in Genes with a Role in Cell Envelope Biosynthesis ..."))
    
- Laekas-Hameder M et al. _Only time will tell: lipopolysaccharide glycoform and biofilm formation._ J Bacteriol, 2024 – overview of Salmonella/E. coli heptose and LPS pathways (GmhA, HldE, GmhB, HldD). ([ASM Journals](https://journals.asm.org/doi/10.1128/jb.00318-24?utm_source=chatgpt.com "Only time will tell: lipopolysaccharide glycoform and biofilm ..."))
    

---

#### cydB – cytochrome bd-I respiratory subunit

- **Function** – Part of the high-affinity **cytochrome bd-I terminal oxidase (CydABX)**, which is highly expressed under low O₂, nitrosative stress and during infection. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))
    
- **Mutant phenotypes** – ΔcydAB(S. Typhimurium) mutants show:
    
    - Increased susceptibility to nitric oxide and nitrosative stress. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6941524/?utm_source=chatgpt.com "The Small Protein CydX Is Required for Cytochrome bd ..."))
        
    - Reduced growth and survival in macrophages and systemic tissues in mice, with relatively minor effects on luminal gut colonization. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))
        
- **Virulence link** – Cytochrome bd is now considered a **virulence-associated respiratory factor**, and cytochrome bd inhibitors are being explored as anti-infective agents. ([SAGE Journals](https://journals.sagepub.com/doi/10.1089/ars.2020.8039?utm_source=chatgpt.com "Bacterial Oxidases of the Cytochrome bd Family"))
    

**Example references**

- Jones-Carson J et al. _Cytochrome bd-dependent bioenergetics and Salmonella survival in macrophages and during infection._ Infect Immun, 2016. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5181779/?utm_source=chatgpt.com "Cytochrome bd-Dependent Bioenergetics and ..."))
    
- Duc KM et al. _The small protein CydX is required for cytochrome bd quinol oxidase stability and function in Salmonella enterica serovar Typhimurium._ J Bacteriol, 2020. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6941524/?utm_source=chatgpt.com "The Small Protein CydX Is Required for Cytochrome bd ..."))
    
- Litvak Y et al. _Commensal Enterobacteriaceae protect against Salmonella colonization of the gut._ Cell Host Microbe, 2019 – uses S. Typhimurium cydAB mutants in gut competition. ([科学直通车](https://www.sciencedirect.com/science/article/pii/S1931312818306309?utm_source=chatgpt.com "Commensal Enterobacteriaceae Protect against ..."))
    

---

#### rfbB (rmlB) – O-antigen / ECA rhamnose dehydratase

- **Function** – Encodes the **dTDP-D-glucose 4,6-dehydratase** of the rml (rfb) operon, providing dTDP-L-rhamnose for O-antigen repeats and ECA in Salmonella. ([UniProt](https://www.uniprot.org/uniprotkb/P26391/entry?utm_source=chatgpt.com "rfbB - dTDP-glucose 4,6-dehydratase"))
    
- **Salmonella structural data** – High-resolution crystal structure of Salmonella RmlB (RfbB) has defined catalytic residues and stereochemistry of the dehydratase reaction. ([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S002228360094470X?utm_source=chatgpt.com "The crystal structure of dTDP-d-glucose 4,6-dehydratase ..."))
    
- **Mutant phenotypes (S. Typhimurium)** – Double loss of **rffG and rfbB** causes:
    
    - Loss of smooth LPS (truncated O-antigen), abnormal cell shape and colony morphology.
        
    - Increased OM permeability and reduced motility.
        
    - Marked attenuation of virulence in both oral and intraperitoneal mouse infection (poor colonization of Peyer’s patches, spleen, liver and impaired cytokine induction). ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40469742/?utm_source=chatgpt.com "Functional loss of rffG and rfbB, encoding dTDP-glucose 4, ..."))
        

**Example references**

- Chakraborty S et al. _Functional loss of rffG and rfbB, encoding dTDP-glucose 4,6-dehydratase, alters colony morphology, cell shape, motility and virulence in Salmonella Typhimurium._ Front Microbiol, 2025. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40469742/?utm_source=chatgpt.com "Functional loss of rffG and rfbB, encoding dTDP-glucose 4, ..."))
    
- Allard STM et al. _The crystal structure of dTDP-D-glucose 4,6-dehydratase (RmlB) from Salmonella enterica._ J Mol Biol, 2001. ([科学直通车](https://www.sciencedirect.com/science/article/abs/pii/S002228360094470X?utm_source=chatgpt.com "The crystal structure of dTDP-d-glucose 4,6-dehydratase ..."))
    

---

#### lpxA – first step of lipid A biosynthesis

- **Function** – **UDP-GlcNAc acyltransferase**, catalysing the very first committed reaction in lipid A synthesis; highly conserved active-site architecture across Gram-negatives, including Salmonella. ([欧洲分子生物学实验室-欧洲生物信息学研究所](https://www.ebi.ac.uk/interpro/protein/C0Q6K4?utm_source=chatgpt.com "UDP-N-acetylglucosamine O-acyltransferase (C0Q6K4) - protein"))
    
- **Essentiality in Salmonella** – Tn-seq in _S. Typhi_ shows that the **fabZ–lpxA–lpxB–rnhB–dnaE–accA operon** contains essential genes, with lpxA having very few or no disruptive insertions. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC2792183/?utm_source=chatgpt.com "Simultaneous assay of every Salmonella Typhi gene using ...")) Salmonella drug-target prioritization also flags lpxA as a conserved core envelope gene. ([PLOS](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0268889&utm_source=chatgpt.com "Dual transcriptome based reconstruction of Salmonella ..."))
    
- **Phenotypes / virulence** – Direct conditional lpxA mutants in Salmonella are rare because of essentiality, but:
    
    - Systems-biology analysis links lpxA expression to cell-envelope fitness and host interaction. ([PLOS](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0268889&utm_source=chatgpt.com "Dual transcriptome based reconstruction of Salmonella ..."))
        
    - In S. enterica, lpxA up-regulation is observed in resistant subpopulations under phage or antibiotic pressure, consistent with its role in modulating LPS and outer-membrane properties. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC10912052/?utm_source=chatgpt.com "Infectivity responses of Salmonella enterica to ..."))
        

**Example references**

- Langridge GC et al. _Simultaneous assay of every Salmonella Typhi gene using dense transposon mutagenesis._ PLoS Genet, 2009. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC2792183/?utm_source=chatgpt.com "Simultaneous assay of every Salmonella Typhi gene using ..."))
    
- Kocabaş K et al. _Dual transcriptome based reconstruction of Salmonella–host interactome._ PLoS One, 2022 – identifies lpxA among critical LPS / envelope genes in S. Typhimurium infection. ([PLOS](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0268889&utm_source=chatgpt.com "Dual transcriptome based reconstruction of Salmonella ..."))
    
- Wyckoff TJ et al. _Hydrocarbon rulers in UDP-N-acetylglucosamine acyltransferases of lipid A biosynthesis._ J Biol Chem, 1998 – mechanistic LpxA work, applied to Salmonella orthologs. ([科学直通车](https://www.sciencedirect.com/science/article/pii/S0021925819588858?utm_source=chatgpt.com "Hydrocarbon Rulers in UDP-N-acetylglucosamine ..."))
    

---

#### rfaD (hldD / waaD) – ADP-L-heptose epimerase

- **Function** – Encodes **ADP-L-glycero-D-manno-heptose-6-epimerase**, which generates ADP-L-heptose from ADP-D-heptose; this is the required donor for inner core heptosyltransferases (RfaC, RfaF, etc.) in Salmonella. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/6337148/?utm_source=chatgpt.com "The rfaD gene codes for ADP-L-glycero-D-mannoheptose- ..."))
    
- **Salmonella genetics** – rfaD lies in the rfa gene cluster at ~79 min in S. Typhimurium LT2 (order rfaDFCL). Cloning and sequencing confirmed its role as the core heptose epimerase. ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))
    
- **Mutant phenotypes** – rfaD mutants in S. Typhimurium:
    
    - Produce rough LPS with altered heptose stereochemistry. ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))
        
    - Show temperature sensitivity and altered permeability. ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))
        
    - Have **severely reduced conjugation recipient ability** for some IncH plasmids, highlighting the role of a complete core in cell–cell interactions. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/9006054/?utm_source=chatgpt.com "Effect of Lipopolysaccharide Mutations on Recipient Ability ..."))
        
- **Innate immunity link** – Because rfaD is required for ADP-L-heptose synthesis, its activity is indirectly linked to **ADP-heptose–ALPK1 signaling** in host cells, a recently recognized pathway by which Gram-negative heptose intermediates (including from Salmonella) activate innate immunity. ([MDPI](https://www.mdpi.com/2076-2607/11/5/1316?utm_source=chatgpt.com "The Role of ADP-Heptose in the Pathogenesis of Infection"))
    

**Example references**

- Sirisena DM et al. _Molecular analysis of the rfaD gene, for heptose synthesis, and the rfaF gene, for heptose transfer, in lipopolysaccharide synthesis in Salmonella typhimurium._ J Bacteriol, 1994. ([欧洲生命科学文献数据库](https://europepmc.org/article/pmc/205362?utm_source=chatgpt.com "Molecular analysis of the rfaD gene, for heptose synthesis ..."))
    
- Sherburne C & Taylor DE. _Effect of lipopolysaccharide mutations on recipient ability of Salmonella Typhimurium for incompatibility group H plasmids._ J Bacteriol, 1997. ([PubMed](https://pubmed.ncbi.nlm.nih.gov/9006054/?utm_source=chatgpt.com "Effect of Lipopolysaccharide Mutations on Recipient Ability ..."))
    
- Coleman WG Jr. _The rfaD gene codes for ADP-L-glycero-D-mannoheptose-6-epimerase, an enzyme required for lipopolysaccharide core biosynthesis._ J Biol Chem, 1983. (E. coli but enzyme and pathway directly conserved.) ([PubMed](https://pubmed.ncbi.nlm.nih.gov/6337148/?utm_source=chatgpt.com "The rfaD gene codes for ADP-L-glycero-D-mannoheptose- ..."))
    

---

If you’d like, next step I can:

- Narrow this to **one or two “best” targets** (e.g. rfbB vs gmhB vs rfaD vs lpxA) for experimental work in _Salmonella Pullorum / Gallinarum / Typhimurium_,
    
- Or build a **more detailed matrix** cross-linking these genes to specific phenotypes you care about (e.g. serum resistance, intracellular persistence, vertical transmission traits).















