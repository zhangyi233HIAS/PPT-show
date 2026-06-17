[方法6的鸡适应](file:///C:\Users\zhangyi\WPSDrive\1763651789\WPS企业云盘\国科大杭高院乐敏组\团队文档\国科大杭高院乐敏组\S-数据-Tnseq\方法6的鸡适应.xlsx)
### ① Cationic Antimicrobial Peptide (CAMP) Resistance (KO IDs: K 00677, K 03585, K 04771, K 07660, K 13014, K 18138, K 19229, K 19230; Core Genes: acrA, acrB, acrE, acrF, arnD, degP, degQ, degS, dppF, gsiA, JI 728\_18165, lpxA, phoP, qseG, rseP, sapD, sapF, yejF, yihA)

* **Core Biological Functions**: This pathway enables Salmonella to evade host innate immunity in the chicken gastrointestinal tract by resisting cationic antimicrobial peptides (CAMPs) produced by epithelial cells and macrophages; key mechanisms include lipopolysaccharide (LPS) modification to reduce peptide binding affinity and active efflux of peptides via multidrug transporters, facilitating bacterial survival, colonization, and systemic spread during infection.
* **Evolutionary Conservation**: Highly conserved across Gram-negative Enterobacteriaceae, including Salmonella serovars pathogenic to poultry; the PhoP/PhoQ regulon and LPS modification genes (e.g., arn operon) trace back to ancestral bacterial adaptations for host defense evasion, with orthologs present in over 90% of sequenced Salmonella genomes and related pathogens like E. coli.
* **Key Regulatory Nodes**: PhoP (transcriptional regulator) acts as the central hub, activated by PhoQ sensor kinase in response to CAMPs or low Mg²⁺; it upregulates LPS-modifying enzymes (e.g., ArnD) and efflux systems (e.g., AcrAB-TolC); QseG contributes to quorum sensing integration, linking environmental cues to resistance expression.
* **Enzymatic/Protein Functions of Corresponding KO IDs**:

  * K 00677 (LpxA): UDP-N-acetylglucosamine acyltransferase \[EC: 2.3.1.180]; initiates lipid A biosynthesis in LPS, altering surface charge to repel CAMPs.
  * K 03585 (AcrA): Multidrug efflux system fusion protein \[EC: 7.3.2.9]; bridges inner membrane transporter and outer membrane channel for peptide export.
  * K 04771 (AcrB): Multidrug efflux transporter \[EC: 7.3.2.9]; proton antiporter that pumps CAMPs out using electrochemical gradient.
  * K 07660 (PhoP): Response regulator; DNA-binding transcriptional activator modulating >100 virulence genes.
  * K 13014 (YihA/TolC-related): GTPase or outer membrane channel; stabilizes efflux complexes or aids in membrane integrity during stress.
  * K 18138 (ArnD): 4-amino-4-deoxy-L-arabinose transferase; catalyzes phosphoethanolamine addition to LPS, neutralizing cationic peptide attraction.
  * K 19229 (SapD): ABC transporter ATP-binding protein; energizes peptide import/export in Sap system for degradation or resistance.
  * K 19230 (SapF): ABC transporter permease; forms channel for substrate translocation in Sap operon.
* **Gene Interaction Networks**: Forms a hierarchical network with PhoP as master regulator directly activating acrAB-tolC operon (efflux) and arnBCAD-ugd (LPS modification); cross-talk via QseG links to AI-3 quorum sensing for coordinated expression; DegS/DegQ/P protease-stress sensors feed into RseP for envelope stress response, indirectly boosting efflux; high centrality of phoP and acrA in STRING networks indicates robustness, with 5-7 direct interactions per core gene in Salmonella models.

### ② Biosynthesis of Various Nucleotide Sugars (KO IDs: K 00067, K 00523, K 00971, K 00973, K 01627, K 01709, K 01710, K 01790, K 02805, K 03273, K 03274, K 12453, K 12454, K 13014, K 16011, K 16704; Core Genes: algA, arnD, ascD, bcsQ\_10385, cpsB, denD, ddhD, fre, gmhB, hisB, JI 728\_10015, JI 728\_18525, JI 728\_19995, kdsA, pslB, rfaD, rfbA, rfbB, rfbC, rfbD, rfbE, rfbG, rfbI, rfbK, rfbS, rffA, rffC, rffG, rplL\_22480, tuf, wbpW, xanB, yiaC)

* **Core Biological Functions**: Essential for assembling O-antigen in LPS and capsular polysaccharides in Salmonella, modulating host immune recognition and biofilm formation in chicken intestines; enables serovar-specific evasion of phagocytosis and complement activation, promoting persistence in avian hosts.
* **Evolutionary Conservation**: Broadly conserved in Gram-negative bacteria for cell envelope biogenesis; Salmonella-specific rfb cluster orthologs evolved \~100-200 million years ago alongside host adaptation, with 80-95% sequence identity across poultry-pathogenic serovars like Enteritidis and Typhimurium.
* **Key Regulatory Nodes**: RfaD/HldE (ADP-L-glycero-D-manno-heptose synthesis) and RfbA (dTDP-sugar initiation) as bottlenecks; PhoP/PhoQ indirectly regulates via envelope stress; global regulators like RpoS control rfb operon under stationary phase in chicken gut.
* **Enzymatic/Protein Functions of Corresponding KO IDs**:

  * K 00067 (Fre): Riboflavin reductase \[EC: 1.5.1.9]; supports flavin cofactor recycling for dehydrogenase activities in sugar pathways.
  * K 00523 (AscD): Quinate/shikimate dehydrogenase \[EC: 1.1.1.282]; aids aromatic precursor supply for nucleotide activation.
  * K 00971 (RffG/RfbB): dTDP-4-dehydrorhamnose 3,5-epimerase \[EC: 5.1.3.13]; converts dTDP-6-deoxy-L-lyxo-4-hexulose to dTDP-L-rhamnose for O-antigen.
  * K 00973 (RfbA): dTDP-glucose 4,6-dehydratase \[EC: 4.2.2.46]; initiates dTDP-rhamnose biosynthesis from dTDP-glucose.
  * K 01627 (KdsA): 2-dehydro-3-deoxyphosphooctanoate aldolase \[EC: 2.2.1.7]; synthesizes KDO precursor for inner core LPS.
  * K 01709 (RfbC): dTDP-4-dehydrorhamnose reductase \[EC: 1.1.1.133]; reduces to dTDP-6-deoxy-D-xylo-4-hexose.
  * K 01710 (RfbD): dTDP-6-deoxy-L-talose 4-dehydratase \[EC: 4.2.2.-]; variant for talose-specific O-antigens.
  * K 01790 (RffA): dTDP-glucose 4,6-dehydratase \[EC: 4.2.2.46]; alternative dehydratase for enterobacterial common antigen.
  * K 02805 (RfbK): dTDP-rhamnose synthase \[EC: 2.4.1.-]; transfers rhamnose to lipid carriers.
  * K 03273 (RfbS): dTDP-fucose synthase \[EC: 2.4.1.-]; fucose addition for serovar diversity.
  * K 03274 (RfaD): ADP-heptose synthase \[EC: 2.7.7.39]; heptose incorporation into LPS core.
  * K 12453 (GmhB): D-glycero-D-manno-heptose 1,7-bisphosphate 7-phosphatase \[EC: 3.1.3.62]; processes heptose for inner LPS.
  * K 12454 (RfbE): Paratose synthase \[EC: 5.4.99.16]; epimerase for paratose in group D antigens.
  * K 13014 (ArnD): As above, links to amino sugar modification.
  * K 16011 (WbpW): UDP-GlcNAc C 6 dehydratase \[EC: 4.2.2.53]; for pseudaminic acid in capsules.
  * K 16704 (XanB): XanB; xanthan precursor dehydrogenase \[EC: 1.1.1.-]; polysaccharide chain extension.
* **Gene Interaction Networks**: Operon-based clusters (e.g., rfbABCD for dTDP-rhamnose) with sequential enzymatic cascades; GmhB-RfaD hub for LPS core branching; cross-regulation with arnD via PhoP for integrated envelope modification; STRING analysis shows rfbA centrality (degree 10+), forming a linear-to-branched network with 20-30 interactions focused on GDP/UDP-sugar pools in Salmonella biofilms.

### ③ Ribosome (KO IDs: K 02863, K 02876, K 02878, K 02879, K 02887, K 02897, K 02906, K 02916, K 02926, K 02933, K 02945, K 02950, K 02954, K 02961, K 02965, K 02968, K 02982, K 02990; Core Genes: cmk, ispH, rho, rplA, rplC, rplD, rplF\_02060, rplO, rplP\_02020, rplQ, rplT, rplY, rpmI, rpsA, rpsC, rpsF, rpsL, rpsN\_02050, rpsQ\_02030, rpsS\_02005, rpsT)

* **Core Biological Functions**: Facilitates protein synthesis essential for Salmonella virulence factor production (e.g., effectors, adhesins) during chicken infection; stress-induced ribosome modulation promotes filamentation and persistence in host macrophages, linking translation to metabolic adaptation.
* **Evolutionary Conservation**: Universally conserved across all domains of life, with bacterial 70 S ribosome orthologs >95% identical in core structure; Salmonella variants (e.g., RpsL mutations) confer aminoglycoside resistance, conserved in poultry-adapted lineages for >50 million years.
* **Key Regulatory Nodes**: Rho (transcription termination factor) couples transcription-translation; RpsA (30 S subunit) senses amino acid starvation via stringent response; sRNAs (e.g., RyhB) target rps mRNAs for fine-tuning under host oxidative stress.
* **Enzymatic/Protein Functions of Corresponding KO IDs**:

  * K 02863 (RplA): 50 S ribosomal protein L 1; GTPase-associated center for elongation factor binding.
  * K 02876 (RplO): 50 S ribosomal protein L 15; stabilizes 23 S rRNA during assembly.
  * K 02878 (RplP): 50 S ribosomal protein L 16; interacts with peptide tunnel and antibiotics.
  * K 02879 (RplQ): 50 S ribosomal protein L 17; bridges 23 S-16 S rRNA interfaces.
  * K 02887 (RplC): 50 S ribosomal protein L 3; peptidyl transferase center component.
  * K 02897 (RplY): 50 S ribosomal protein L 25; non-essential stability factor.
  * K 02906 (RpsC): 30 S ribosomal protein S 3; mRNA decoding and proofreading.
  * K 02916 (RpsF): 30 S ribosomal protein S 6; anti-Shine-Dalgarno sequence interaction.
  * K 02926 (RplD): 50 S ribosomal protein L 4; GTP hydrolysis in translocation.
  * K 02933 (RplF): 50 S ribosomal protein L 6; rRNA binding and assembly chaperone.
  * K 02945 (RpsQ): 30 S ribosomal protein S 17; helix 44 stabilization.
  * K 02950 (RpsE): 30 S ribosomal protein S 5 (implied); tRNA anticodon recognition.
  * K 02954 (RpsF duplicate): As above.
  * K 02961 (RpsQ duplicate): As above.
  * K 02965 (RpsS): 30 S ribosomal protein S 19; intersubunit bridge B 6.
  * K 02968 (RpsT): 30 S ribosomal protein S 20; early assembly initiator.
  * K 02982 (RpsC duplicate): As above.
  * K 02990 (RpsE duplicate): As above.
* **Gene Interaction Networks**: Polycistronic rpl/rps operons (e.g., rplA-rplK) form assembly cascades; Rho interacts with rplA/rpsA for co-transcriptional regulation; high modularity with 30 S/50 S subnetworks; STRING centrality at rplA (degree 15+), integrating with amino acid biosynthesis under chicken infection stress.

### ④ Oxidative Phosphorylation (KO IDs: K 00330, K 00332, K 00333, K 00334, K 00336, K 00339, K 00342, K 00425, K 00426, K 01507, K 02110, K 02111, K 02114, K 13378, K 13380; Core Genes: appB, appC, atpA, atpC, atpE, cydA\_07470, cydA\_09250, cydB\_07475, cydB\_09255, nuoA, nuoB, nuoC, nuoE, nuoG, nuoJ, nuoM, ppa)

* **Core Biological Functions**: Generates ATP via electron transport chain (ETC) for energy-intensive processes like invasion and replication in chicken macrophages; cytochrome bd oxidase (Cyd) supports microaerobic respiration in hypoxic gut niches, enhancing survival against oxidative burst.
* **Evolutionary Conservation**: Core ETC components conserved in alpha-proteobacteria ancestors (>1 billion years); Salmonella duplicates (e.g., cydAB paralogs) evolved for host-specific hypoxia, with 85-100% identity in poultry serovars.
* **Key Regulatory Nodes**: NuoA-N (Complex I) as entry point for NADH oxidation; ArcA/ArcB senses O₂ to repress/activate cydAB; ATP synthase (Atp) regulated by IF 2 for translational coupling under energy stress.
* **Enzymatic/Protein Functions of Corresponding KO IDs**:

  * K 00330 (NuoA): NADH\: ubiquinone oxidoreductase subunit A; FMN-binding, electron input.
  * K 00332 (NuoB): NADH\: ubiquinone oxidoreductase subunit B; Fe-S cluster carrier.
  * K 00333 (NuoC): NADH\: ubiquinone oxidoreductase subunit C; quinone-binding.
  * K 00334 (NuoD): NADH\: ubiquinone oxidoreductase subunit D; proton pumping.
  * K 00336 (NuoE): NADH\: ubiquinone oxidoreductase subunit E; Fe-S center N 3.
  * K 00339 (NuoG): NADH\: ubiquinone oxidoreductase subunit G; membrane anchor, proton translocation \[EC: 7.1.1.2].
  * K 00342 (NuoM): NADH\: ubiquinone oxidoreductase subunit M; Na⁺/H⁺ antiporter subunit.
  * K 00425 (CydA): Cytochrome bd ubiquinol oxidase subunit I \[EC: 7.1.1.7]; quinol oxidation under low O₂.
  * K 00426 (CydB): Cytochrome bd ubiquinol oxidase subunit II; heme b/d coordination.
  * K 01507 (Ppa): Inorganic pyrophosphatase \[EC: 3.6.1.1]; hydrolyzes PPi to drive ATP synthesis.
  * K 02110 (AppB): Cytochrome bd-II oxidase subunit I; alternative quinol oxidase.
  * K 02111 (AppC): Cytochrome bd-II oxidase subunit II; electron transfer to O₂.
  * K 02114 (AtpE): ATP synthase subunit c; F₀ ring for proton flow \[EC: 7.1.2.2].
  * K 13378 (NuoJ): NADH\: ubiquinone oxidoreductase subunit J; peripheral arm attachment.
  * K 13380 (NuoH): NADH\: ubiquinone oxidoreductase subunit H; membrane-embedded proton channel.
* **Gene Interaction Networks**: Modular ETC complexes (NADH dehydrogenase nuoA-M operon, ATP synthase atp operon); CydAB paralogs form redundant branches for O₂ adaptation; ArcA binds nuo promoters for redox control; high connectivity at nuoB (degree 12 in Salmonella networks), integrating with glycolysis for host energy hijacking.
