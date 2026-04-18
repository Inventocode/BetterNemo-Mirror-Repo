.class public Lcom/codemao/midi/sun/SF2Instrument;
.super Lcom/codemao/midi/sun/ModelInstrument;
.source "SF2Instrument.java"


# instance fields
.field protected bank:I

.field protected globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

.field protected name:Ljava/lang/String;

.field protected preset:I

.field protected regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2InstrumentRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/codemao/midi/sun/ModelInstrument;-><init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, ""

    .line 41
    iput-object v1, p0, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    .line 43
    iput v1, p0, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    .line 47
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/SF2Soundbank;)V
    .registers 3

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/codemao/midi/sun/ModelInstrument;-><init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    .line 43
    iput p1, p0, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    .line 47
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    return-void
.end method

.method private addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V
    .registers 7

    const/16 v0, -0x2ee0

    if-ne p3, v0, :cond_7

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    goto :goto_8

    :cond_7
    int-to-double v0, p3

    .line 888
    :goto_8
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v2, p2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {p3, v0, v1, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;D)V
    .registers 7

    .line 902
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v1, p2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v0, p3, p4, v1}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V
    .registers 7

    int-to-double v0, p3

    .line 895
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v2, p2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {p3, v0, v1, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static convertDestination(I[D[Lcom/codemao/midi/sun/ModelSource;)Lcom/codemao/midi/sun/ModelDestination;
    .registers 10

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    const-wide v2, -0x4027eae9e0000000L  # -0.3762870132923126

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_cc

    :pswitch_d  #0xc, 0xe, 0x12, 0x13, 0x14, 0x1f, 0x20, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x31, 0x32
    move-object p0, v4

    goto/16 :goto_c2

    .line 816
    :pswitch_10  #0x34
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    :pswitch_14  #0x33
    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    .line 811
    aput-wide v0, p1, v6

    .line 812
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 820
    :pswitch_1c  #0x30
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 821
    aput-wide v2, p1, v6

    goto/16 :goto_c2

    .line 807
    :pswitch_22  #0x2f
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 804
    :pswitch_26  #0x2e
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 801
    :pswitch_2a  #0x26
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 797
    :pswitch_2e  #0x25
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 798
    aput-wide v0, p1, v6

    goto/16 :goto_c2

    .line 794
    :pswitch_34  #0x24
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 791
    :pswitch_38  #0x23
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 788
    :pswitch_3c  #0x22
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 785
    :pswitch_40  #0x21
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 782
    :pswitch_44  #0x1e
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 778
    :pswitch_48  #0x1d
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 779
    aput-wide v0, p1, v6

    goto/16 :goto_c2

    .line 775
    :pswitch_4e  #0x1c
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 772
    :pswitch_52  #0x1b
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 769
    :pswitch_56  #0x1a
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 766
    :pswitch_5a  #0x19
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto/16 :goto_c2

    .line 762
    :pswitch_5e  #0x18
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 759
    :pswitch_61  #0x17
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 756
    :pswitch_64  #0x16
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 753
    :pswitch_67  #0x15
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 750
    :pswitch_6a  #0x11
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PAN:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 747
    :pswitch_6d  #0x10
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_REVERB:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 744
    :pswitch_70  #0xf
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_CHORUS:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 849
    :pswitch_73  #0xd
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 850
    aput-wide v2, p1, v6

    .line 851
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    goto :goto_c2

    .line 866
    :pswitch_81  #0xb
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 867
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    goto :goto_c2

    .line 841
    :pswitch_8d  #0xa
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 842
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    goto :goto_c2

    .line 741
    :pswitch_99  #0x9
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_Q:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 738
    :pswitch_9c  #0x8
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_c2

    .line 858
    :pswitch_9f  #0x7
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 859
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    goto :goto_c2

    .line 825
    :pswitch_ab  #0x6
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 826
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO2:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    goto :goto_c2

    .line 833
    :pswitch_b7  #0x5
    sget-object p0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 834
    new-instance p1, Lcom/codemao/midi/sun/ModelSource;

    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {p1, v0, v6, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    aput-object p1, p2, v6

    :goto_c2
    if-eqz p0, :cond_ca

    .line 877
    new-instance p1, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {p1, p0}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    return-object p1

    :cond_ca
    return-object v4

    nop

    :pswitch_data_cc
    .packed-switch 0x5
        :pswitch_b7  #00000005
        :pswitch_ab  #00000006
        :pswitch_9f  #00000007
        :pswitch_9c  #00000008
        :pswitch_99  #00000009
        :pswitch_8d  #0000000a
        :pswitch_81  #0000000b
        :pswitch_d  #0000000c
        :pswitch_73  #0000000d
        :pswitch_d  #0000000e
        :pswitch_70  #0000000f
        :pswitch_6d  #00000010
        :pswitch_6a  #00000011
        :pswitch_d  #00000012
        :pswitch_d  #00000013
        :pswitch_d  #00000014
        :pswitch_67  #00000015
        :pswitch_64  #00000016
        :pswitch_61  #00000017
        :pswitch_5e  #00000018
        :pswitch_5a  #00000019
        :pswitch_56  #0000001a
        :pswitch_52  #0000001b
        :pswitch_4e  #0000001c
        :pswitch_48  #0000001d
        :pswitch_44  #0000001e
        :pswitch_d  #0000001f
        :pswitch_d  #00000020
        :pswitch_40  #00000021
        :pswitch_3c  #00000022
        :pswitch_38  #00000023
        :pswitch_34  #00000024
        :pswitch_2e  #00000025
        :pswitch_2a  #00000026
        :pswitch_d  #00000027
        :pswitch_d  #00000028
        :pswitch_d  #00000029
        :pswitch_d  #0000002a
        :pswitch_d  #0000002b
        :pswitch_d  #0000002c
        :pswitch_d  #0000002d
        :pswitch_26  #0000002e
        :pswitch_22  #0000002f
        :pswitch_1c  #00000030
        :pswitch_d  #00000031
        :pswitch_d  #00000032
        :pswitch_14  #00000033
        :pswitch_10  #00000034
    .end packed-switch
.end method

.method private convertModulator(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/SF2Modulator;)V
    .registers 14

    .line 659
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getSourceOperator()I

    move-result v0

    invoke-static {v0}, Lcom/codemao/midi/sun/SF2Instrument;->convertSource(I)Lcom/codemao/midi/sun/ModelSource;

    move-result-object v2

    .line 660
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getAmountSourceOperator()I

    move-result v0

    invoke-static {v0}, Lcom/codemao/midi/sun/SF2Instrument;->convertSource(I)Lcom/codemao/midi/sun/ModelSource;

    move-result-object v3

    if-nez v2, :cond_19

    .line 661
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getSourceOperator()I

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    if-nez v3, :cond_22

    .line 663
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getAmountSourceOperator()I

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 665
    :cond_22
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getAmount()S

    move-result v0

    int-to-double v0, v0

    const/4 v4, 0x1

    new-array v5, v4, [D

    new-array v7, v4, [Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    const/4 v10, 0x0

    aput-wide v8, v5, v10

    .line 670
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getDestinationOperator()I

    move-result v4

    .line 669
    invoke-static {v4, v5, v7}, Lcom/codemao/midi/sun/SF2Instrument;->convertDestination(I[D[Lcom/codemao/midi/sun/ModelSource;)Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v6

    .line 671
    aget-wide v4, v5, v10

    mul-double v4, v4, v0

    if-nez v6, :cond_40

    return-void

    .line 674
    :cond_40
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SF2Modulator;->getTransportOperator()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_51

    .line 675
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelDestination;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/sun/ModelStandardTransform;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/codemao/midi/sun/ModelStandardTransform;->setTransform(I)V

    .line 678
    :cond_51
    new-instance p2, Lcom/codemao/midi/sun/ModelConnectionBlock;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 679
    aget-object v0, v7, v10

    if-eqz v0, :cond_60

    .line 680
    aget-object v0, v7, v10

    invoke-virtual {p2, v0}, Lcom/codemao/midi/sun/ModelConnectionBlock;->addSource(Lcom/codemao/midi/sun/ModelSource;)V

    .line 681
    :cond_60
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static convertSource(I)Lcom/codemao/midi/sun/ModelSource;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    and-int/lit8 v1, p0, 0x7f

    and-int/lit16 v2, p0, 0x80

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_18

    .line 691
    new-instance v2, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "midi_cc"

    invoke-direct {v2, v5, v1}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_18
    if-ne v1, v4, :cond_1d

    .line 694
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    goto :goto_1e

    :cond_1d
    move-object v2, v0

    :goto_1e
    if-ne v1, v3, :cond_22

    .line 696
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    :cond_22
    const/16 v5, 0xa

    if-ne v1, v5, :cond_28

    .line 698
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_POLY_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

    :cond_28
    const/16 v5, 0xd

    if-ne v1, v5, :cond_2e

    .line 700
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_CHANNEL_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

    :cond_2e
    const/16 v5, 0xe

    if-ne v1, v5, :cond_34

    .line 702
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    :cond_34
    const/16 v5, 0x10

    if-ne v1, v5, :cond_41

    .line 704
    new-instance v2, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi_rpn"

    const-string v5, "0"

    invoke-direct {v2, v1, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    if-nez v2, :cond_44

    return-object v0

    .line 709
    :cond_44
    new-instance v0, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v0, v2}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    .line 711
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/sun/ModelStandardTransform;

    and-int/lit16 v2, p0, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_59

    .line 714
    invoke-virtual {v1, v6}, Lcom/codemao/midi/sun/ModelStandardTransform;->setDirection(Z)V

    goto :goto_5c

    .line 716
    :cond_59
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelStandardTransform;->setDirection(Z)V

    :goto_5c
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_64

    .line 719
    invoke-virtual {v1, v6}, Lcom/codemao/midi/sun/ModelStandardTransform;->setPolarity(Z)V

    goto :goto_67

    .line 721
    :cond_64
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelStandardTransform;->setPolarity(Z)V

    :goto_67
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_6e

    .line 724
    invoke-virtual {v1, v6}, Lcom/codemao/midi/sun/ModelStandardTransform;->setTransform(I)V

    :cond_6e
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_75

    .line 726
    invoke-virtual {v1, v4}, Lcom/codemao/midi/sun/ModelStandardTransform;->setTransform(I)V

    :cond_75
    and-int/lit16 p0, p0, 0xc00

    if-eqz p0, :cond_7c

    .line 728
    invoke-virtual {v1, v3}, Lcom/codemao/midi/sun/ModelStandardTransform;->setTransform(I)V

    :cond_7c
    return-object v0
.end method

.method private getGeneratorValue(Ljava/util/Map;I)S
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;I)S"
        }
    .end annotation

    .line 907
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 908
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 909
    :cond_19
    invoke-static {p2}, Lcom/codemao/midi/sun/SF2Region;->getDefaultValue(I)S

    move-result p1

    return p1
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Lcom/codemao/midi/javax/Patch;
    .registers 5

    .line 68
    iget v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_10

    .line 69
    new-instance v0, Lcom/codemao/midi/sun/ModelPatch;

    iget v2, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelPatch;-><init>(IIZ)V

    return-object v0

    .line 71
    :cond_10
    new-instance v2, Lcom/codemao/midi/sun/ModelPatch;

    shl-int/lit8 v0, v0, 0x7

    iget v3, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    invoke-direct {v2, v0, v3, v1}, Lcom/codemao/midi/sun/ModelPatch;-><init>(IIZ)V

    return-object v2
.end method

.method public getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;
    .registers 34

    move-object/from16 v0, p0

    .line 134
    iget-object v1, v0, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    .line 135
    invoke-virtual {v4}, Lcom/codemao/midi/sun/SF2InstrumentRegion;->getLayer()Lcom/codemao/midi/sun/SF2Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_a

    .line 136
    :cond_24
    new-array v1, v3, [Lcom/codemao/midi/sun/ModelPerformer;

    .line 139
    iget-object v3, v0, Lcom/codemao/midi/sun/SF2Instrument;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    .line 140
    iget-object v4, v0, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_752

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    .line 141
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-virtual {v6}, Lcom/codemao/midi/sun/SF2Region;->getGenerators()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v3, :cond_50

    .line 144
    invoke-virtual {v3}, Lcom/codemao/midi/sun/SF2Region;->getGenerators()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 146
    :cond_50
    invoke-virtual {v6}, Lcom/codemao/midi/sun/SF2InstrumentRegion;->getLayer()Lcom/codemao/midi/sun/SF2Layer;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Lcom/codemao/midi/sun/SF2Layer;->getGlobalRegion()Lcom/codemao/midi/sun/SF2GlobalRegion;

    move-result-object v9

    .line 148
    invoke-virtual {v8}, Lcom/codemao/midi/sun/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_60
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codemao/midi/sun/SF2LayerRegion;

    .line 149
    new-instance v12, Lcom/codemao/midi/sun/ModelPerformer;

    invoke-direct {v12}, Lcom/codemao/midi/sun/ModelPerformer;-><init>()V

    .line 150
    invoke-virtual {v11}, Lcom/codemao/midi/sun/SF2LayerRegion;->getSample()Lcom/codemao/midi/sun/SF2Sample;

    move-result-object v13

    if-eqz v13, :cond_83

    .line 151
    invoke-virtual {v11}, Lcom/codemao/midi/sun/SF2LayerRegion;->getSample()Lcom/codemao/midi/sun/SF2Sample;

    move-result-object v13

    invoke-virtual {v13}, Lcom/codemao/midi/sun/SF2Sample;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/codemao/midi/sun/ModelPerformer;->setName(Ljava/lang/String;)V

    goto :goto_8a

    .line 153
    :cond_83
    invoke-virtual {v8}, Lcom/codemao/midi/sun/SF2Layer;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/codemao/midi/sun/ModelPerformer;->setName(Ljava/lang/String;)V

    :goto_8a
    add-int/lit8 v13, v5, 0x1

    .line 155
    aput-object v12, v1, v5

    const/16 v5, 0x39

    .line 162
    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 163
    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SF2Region;->getInteger(I)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/codemao/midi/sun/ModelPerformer;->setExclusiveClass(I)V

    :cond_9d
    const/16 v5, 0x2b

    .line 166
    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_cb

    .line 167
    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SF2Region;->getBytes(I)[B

    move-result-object v14

    .line 169
    aget-byte v16, v14, v2

    if-ltz v16, :cond_b5

    .line 170
    aget-byte v16, v14, v2

    if-lez v16, :cond_b5

    .line 171
    aget-byte v16, v14, v2

    goto :goto_b7

    :cond_b5
    const/16 v16, 0x0

    .line 172
    :goto_b7
    aget-byte v17, v14, v15

    if-ltz v17, :cond_c6

    .line 173
    aget-byte v5, v14, v15

    const/16 v2, 0x7f

    if-ge v5, v2, :cond_c6

    .line 174
    aget-byte v2, v14, v15

    move/from16 v5, v16

    goto :goto_ce

    :cond_c6
    move/from16 v5, v16

    const/16 v2, 0x7f

    goto :goto_ce

    :cond_cb
    const/16 v2, 0x7f

    const/4 v5, 0x0

    :goto_ce
    const/16 v14, 0x2c

    .line 176
    invoke-virtual {v11, v14}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v16

    if-eqz v16, :cond_ff

    .line 177
    invoke-virtual {v11, v14}, Lcom/codemao/midi/sun/SF2Region;->getBytes(I)[B

    move-result-object v16

    const/16 v18, 0x0

    .line 179
    aget-byte v19, v16, v18

    if-ltz v19, :cond_e7

    .line 180
    aget-byte v19, v16, v18

    if-lez v19, :cond_e7

    .line 181
    aget-byte v19, v16, v18

    goto :goto_e9

    :cond_e7
    const/16 v19, 0x0

    .line 182
    :goto_e9
    aget-byte v20, v16, v15

    if-ltz v20, :cond_f8

    .line 183
    aget-byte v14, v16, v15

    move-object/from16 v21, v4

    const/16 v4, 0x7f

    if-ge v14, v4, :cond_fc

    .line 184
    aget-byte v4, v16, v15

    goto :goto_fc

    :cond_f8
    move-object/from16 v21, v4

    const/16 v4, 0x7f

    :cond_fc
    :goto_fc
    move/from16 v14, v19

    goto :goto_104

    :cond_ff
    move-object/from16 v21, v4

    const/16 v4, 0x7f

    const/4 v14, 0x0

    :goto_104
    const/16 v15, 0x2b

    .line 186
    invoke-virtual {v6, v15}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v16

    if-eqz v16, :cond_126

    .line 187
    invoke-virtual {v6, v15}, Lcom/codemao/midi/sun/SF2Region;->getBytes(I)[B

    move-result-object v15

    move-object/from16 v17, v10

    const/16 v16, 0x0

    .line 189
    aget-byte v10, v15, v16

    if-le v10, v5, :cond_11a

    .line 190
    aget-byte v5, v15, v16

    :cond_11a
    move/from16 v16, v5

    const/4 v10, 0x1

    .line 191
    aget-byte v5, v15, v10

    if-ge v5, v2, :cond_123

    .line 192
    aget-byte v2, v15, v10

    :cond_123
    move/from16 v5, v16

    goto :goto_128

    :cond_126
    move-object/from16 v17, v10

    :goto_128
    const/16 v10, 0x2c

    .line 194
    invoke-virtual {v6, v10}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v15

    if-eqz v15, :cond_145

    .line 195
    invoke-virtual {v6, v10}, Lcom/codemao/midi/sun/SF2Region;->getBytes(I)[B

    move-result-object v10

    move/from16 v16, v13

    const/4 v15, 0x0

    .line 197
    aget-byte v13, v10, v15

    if-le v13, v14, :cond_13d

    .line 198
    aget-byte v14, v10, v15

    :cond_13d
    const/4 v13, 0x1

    .line 199
    aget-byte v15, v10, v13

    if-ge v15, v4, :cond_148

    .line 200
    aget-byte v4, v10, v13

    goto :goto_148

    :cond_145
    move/from16 v16, v13

    const/4 v13, 0x1

    .line 202
    :cond_148
    :goto_148
    invoke-virtual {v12, v5}, Lcom/codemao/midi/sun/ModelPerformer;->setKeyFrom(I)V

    .line 203
    invoke-virtual {v12, v2}, Lcom/codemao/midi/sun/ModelPerformer;->setKeyTo(I)V

    .line 204
    invoke-virtual {v12, v14}, Lcom/codemao/midi/sun/ModelPerformer;->setVelFrom(I)V

    .line 205
    invoke-virtual {v12, v4}, Lcom/codemao/midi/sun/ModelPerformer;->setVelTo(I)V

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v11, v2}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v4

    .line 209
    invoke-virtual {v11, v13}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v2

    const/4 v5, 0x2

    .line 211
    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v10

    const/4 v13, 0x3

    .line 213
    invoke-virtual {v11, v13}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v14

    const/4 v15, 0x4

    .line 216
    invoke-virtual {v11, v15}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v15

    const v19, 0x8000

    mul-int v15, v15, v19

    add-int/2addr v4, v15

    const/16 v15, 0xc

    .line 218
    invoke-virtual {v11, v15}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v15

    mul-int v15, v15, v19

    add-int/2addr v2, v15

    const/16 v15, 0x2d

    .line 220
    invoke-virtual {v11, v15}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v15

    mul-int v15, v15, v19

    add-int/2addr v10, v15

    const/16 v15, 0x32

    .line 222
    invoke-virtual {v11, v15}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v15

    mul-int v15, v15, v19

    add-int/2addr v14, v15

    sub-int/2addr v10, v4

    sub-int/2addr v14, v4

    .line 227
    invoke-virtual {v11}, Lcom/codemao/midi/sun/SF2LayerRegion;->getSample()Lcom/codemao/midi/sun/SF2Sample;

    move-result-object v15

    .line 228
    iget v5, v15, Lcom/codemao/midi/sun/SF2Sample;->originalPitch:I

    const/16 v13, 0x3a

    move/from16 v22, v5

    .line 229
    invoke-virtual {v11, v13}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v5

    move-object/from16 v23, v1

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1a7

    .line 230
    invoke-virtual {v11, v13}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v5

    goto :goto_1a9

    :cond_1a7
    move/from16 v5, v22

    :goto_1a9
    neg-int v13, v5

    const/16 v1, 0x64

    mul-int/lit8 v13, v13, 0x64

    .line 233
    iget-byte v1, v15, Lcom/codemao/midi/sun/SF2Sample;->pitchCorrection:B

    add-int/2addr v13, v1

    int-to-float v1, v13

    .line 234
    invoke-virtual {v15}, Lcom/codemao/midi/sun/SF2Sample;->getDataBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v13

    move-object/from16 v24, v6

    .line 235
    invoke-virtual {v15}, Lcom/codemao/midi/sun/SF2Sample;->getData24Buffer()Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v6

    if-nez v4, :cond_1cc

    if-eqz v2, :cond_1c1

    goto :goto_1cc

    :cond_1c1
    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v31, v10

    move-object/from16 v30, v11

    goto :goto_1f3

    :cond_1cc
    :goto_1cc
    move-object/from16 v25, v3

    mul-int/lit8 v3, v4, 0x2

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    int-to-long v7, v3

    .line 239
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v28

    mul-int/lit8 v3, v2, 0x2

    move/from16 v31, v10

    move-object/from16 v30, v11

    int-to-long v10, v3

    add-long v10, v28, v10

    .line 238
    invoke-virtual {v13, v7, v8, v10, v11}, Lcom/codemao/midi/sun/ModelByteBuffer;->subbuffer(JJ)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v13

    if-eqz v6, :cond_1f3

    int-to-long v3, v4

    .line 242
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v7

    int-to-long v10, v2

    add-long/2addr v7, v10

    .line 241
    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/codemao/midi/sun/ModelByteBuffer;->subbuffer(JJ)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v6

    .line 265
    :cond_1f3
    :goto_1f3
    new-instance v2, Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    .line 266
    invoke-virtual {v15}, Lcom/codemao/midi/sun/SF2Sample;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    invoke-direct {v2, v13, v3, v1}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;-><init>(Lcom/codemao/midi/sun/ModelByteBuffer;Lcom/codemao/midi/javax/sampled/AudioFormat;F)V

    if-eqz v6, :cond_201

    .line 268
    invoke-virtual {v2, v6}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->set8BitExtensionBuffer(Lcom/codemao/midi/sun/ModelByteBuffer;)V

    .line 270
    :cond_201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_20f

    .line 272
    invoke-virtual {v9}, Lcom/codemao/midi/sun/SF2Region;->getGenerators()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    :cond_20f
    invoke-virtual/range {v30 .. v30}, Lcom/codemao/midi/sun/SF2Region;->getGenerators()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_245

    .line 277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v11, v30

    invoke-virtual {v11, v6}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v6

    goto :goto_255

    :cond_245
    move-object/from16 v11, v30

    .line 279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 280
    :goto_255
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    .line 281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v30, v11

    goto :goto_21e

    :cond_26f
    move-object/from16 v11, v30

    const/16 v3, 0x36

    .line 290
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b5

    .line 293
    :cond_27d
    iget-wide v6, v15, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    const-wide/16 v28, 0x0

    cmp-long v4, v6, v28

    if-ltz v4, :cond_2b5

    move-object v4, v9

    iget-wide v8, v15, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    cmp-long v10, v8, v28

    if-lez v10, :cond_2b2

    move/from16 v10, v31

    int-to-long v8, v10

    add-long/2addr v6, v8

    long-to-int v7, v6

    int-to-float v6, v7

    .line 294
    invoke-virtual {v2, v6}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->setLoopStart(F)V

    .line 296
    iget-wide v6, v15, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    move-object v13, v4

    move v10, v5

    iget-wide v4, v15, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    sub-long/2addr v6, v4

    int-to-long v4, v14

    add-long/2addr v6, v4

    sub-long/2addr v6, v8

    long-to-int v4, v6

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->setLoopLength(F)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2aa

    .line 299
    invoke-virtual {v2, v4}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->setLoopType(I)V

    :cond_2aa
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b7

    const/4 v3, 0x2

    .line 301
    invoke-virtual {v2, v3}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->setLoopType(I)V

    goto :goto_2b7

    :cond_2b2
    move-object v13, v4

    move v10, v5

    goto :goto_2b7

    :cond_2b5
    move v10, v5

    move-object v13, v9

    .line 304
    :cond_2b7
    :goto_2b7
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x21

    .line 307
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x22

    .line 309
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    const/16 v4, 0x23

    .line 311
    invoke-direct {v0, v1, v4}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v4

    const/16 v5, 0x24

    .line 313
    invoke-direct {v0, v1, v5}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v5

    const/16 v6, 0x25

    .line 315
    invoke-direct {v0, v1, v6}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    const/16 v7, 0x26

    .line 317
    invoke-direct {v0, v1, v7}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v7

    const/16 v8, -0x2ee0

    if-eq v4, v8, :cond_31b

    const/16 v9, 0x27

    .line 321
    invoke-direct {v0, v1, v9}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v9

    mul-int/lit8 v14, v9, 0x3c

    add-int/2addr v4, v14

    int-to-short v4, v4

    neg-int v9, v9

    mul-int/lit16 v9, v9, 0x80

    int-to-float v9, v9

    .line 325
    sget-object v14, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 326
    sget-object v15, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 327
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v8

    move/from16 v20, v4

    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    move-object/from16 v28, v13

    new-instance v13, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v13, v14}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move v14, v10

    float-to-double v9, v9

    move/from16 v29, v14

    new-instance v14, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v14, v15}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v4, v13, v9, v10, v14}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v20

    const/16 v8, -0x2ee0

    goto :goto_31f

    :cond_31b
    move/from16 v29, v10

    move-object/from16 v28, v13

    :goto_31f
    if-eq v5, v8, :cond_34e

    const/16 v8, 0x28

    .line 332
    invoke-direct {v0, v1, v8}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v8

    mul-int/lit8 v9, v8, 0x3c

    add-int/2addr v5, v9

    int-to-short v5, v5

    neg-int v8, v8

    mul-int/lit16 v8, v8, 0x80

    int-to-float v8, v8

    .line 336
    sget-object v9, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 337
    sget-object v10, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 338
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v15, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v15, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    float-to-double v8, v8

    move/from16 v20, v5

    new-instance v5, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v5, v10}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v14, v15, v8, v9, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, v20

    .line 343
    :cond_34e
    sget-object v8, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v8, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 345
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 347
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v4}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 349
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v5}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    const/16 v2, 0x3e8

    rsub-int v3, v6, 0x3e8

    int-to-short v3, v3

    if-gez v3, :cond_36a

    const/4 v3, 0x0

    :cond_36a
    if-le v3, v2, :cond_36e

    const/16 v3, 0x3e8

    .line 359
    :cond_36e
    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v4, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 361
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v3, v7}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    const/16 v3, 0xb

    .line 364
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v4

    const/4 v5, 0x7

    if-nez v4, :cond_387

    .line 366
    invoke-direct {v0, v1, v5}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v4

    if-eqz v4, :cond_483

    :cond_387
    const/16 v4, 0x19

    .line 368
    invoke-direct {v0, v1, v4}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v4

    const/16 v6, 0x1a

    .line 370
    invoke-direct {v0, v1, v6}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    const/16 v7, 0x1b

    .line 372
    invoke-direct {v0, v1, v7}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v7

    const/16 v8, 0x1c

    .line 374
    invoke-direct {v0, v1, v8}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v8

    const/16 v9, 0x1d

    .line 376
    invoke-direct {v0, v1, v9}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v9

    const/16 v10, 0x1e

    .line 378
    invoke-direct {v0, v1, v10}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v10

    const/16 v13, -0x2ee0

    if-eq v7, v13, :cond_3dc

    const/16 v13, 0x1f

    .line 383
    invoke-direct {v0, v1, v13}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v13

    mul-int/lit8 v14, v13, 0x3c

    add-int/2addr v7, v14

    int-to-short v7, v7

    neg-int v13, v13

    mul-int/lit16 v13, v13, 0x80

    int-to-float v13, v13

    .line 387
    sget-object v14, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 388
    sget-object v15, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 389
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v5

    new-instance v3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v2, v14}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    float-to-double v13, v13

    move/from16 v32, v7

    new-instance v7, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v7, v15}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v3, v2, v13, v14, v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, v32

    :cond_3dc
    const/16 v2, -0x2ee0

    if-eq v8, v2, :cond_40d

    const/16 v2, 0x20

    .line 394
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    mul-int/lit8 v3, v2, 0x3c

    add-int/2addr v8, v3

    int-to-short v8, v8

    neg-int v2, v2

    mul-int/lit16 v2, v2, 0x80

    int-to-float v2, v2

    .line 398
    sget-object v3, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 399
    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 400
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v15, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v15, v3}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    float-to-double v2, v2

    move/from16 v19, v8

    new-instance v8, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v8, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v14, v15, v2, v3, v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v8, v19

    .line 405
    :cond_40d
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v4}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 407
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v6}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 409
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v7}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 411
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v8}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    const/16 v2, 0x3e8

    if-gez v9, :cond_426

    const/4 v9, 0x0

    :cond_426
    if-le v9, v2, :cond_42a

    const/16 v9, 0x3e8

    .line 417
    :cond_42a
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    sub-int/2addr v2, v9

    int-to-double v4, v2

    invoke-direct {v0, v12, v3, v4, v5}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;D)V

    .line 419
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v10}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    const/16 v2, 0xb

    .line 422
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-eqz v3, :cond_45d

    .line 424
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    int-to-double v2, v2

    .line 426
    sget-object v4, Lcom/codemao/midi/sun/ModelSource;->SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 427
    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 429
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v8, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    new-instance v4, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v7, v8, v2, v3, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45d
    const/4 v2, 0x7

    .line 434
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-eqz v3, :cond_483

    .line 436
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    int-to-double v2, v2

    .line 438
    sget-object v4, Lcom/codemao/midi/sun/ModelSource;->SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 439
    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 440
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v8, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    new-instance v4, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v7, v8, v2, v3, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_483
    const/16 v2, 0xa

    .line 447
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    const/16 v4, 0xd

    const/4 v5, 0x5

    if-nez v3, :cond_49a

    .line 449
    invoke-direct {v0, v1, v5}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-nez v3, :cond_49a

    .line 451
    invoke-direct {v0, v1, v4}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-eqz v3, :cond_4b0

    :cond_49a
    const/16 v3, 0x16

    .line 453
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    const/16 v6, 0x15

    .line 455
    invoke-direct {v0, v1, v6}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    .line 457
    sget-object v7, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v7, v6}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 459
    sget-object v6, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v6, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_4b0
    const/16 v3, 0x18

    .line 463
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    const/16 v6, 0x17

    .line 465
    invoke-direct {v0, v1, v6}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v6

    .line 467
    sget-object v7, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v7, v6}, Lcom/codemao/midi/sun/SF2Instrument;->addTimecentValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 469
    sget-object v6, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v6, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    const/4 v3, 0x6

    .line 473
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-eqz v3, :cond_4ef

    const/4 v3, 0x6

    .line 475
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    int-to-double v6, v3

    .line 477
    sget-object v3, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO2:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 478
    sget-object v8, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 479
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v13, Lcom/codemao/midi/sun/ModelSource;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v13, v3, v15, v14}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v3, v8}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v10, v13, v6, v7, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_4ef
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    if-eqz v3, :cond_516

    .line 489
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    int-to-double v2, v2

    .line 491
    sget-object v6, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 492
    sget-object v7, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 493
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v10, Lcom/codemao/midi/sun/ModelSource;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v10, v6, v14, v13}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    new-instance v6, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v6, v7}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v9, v10, v2, v3, v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_516
    invoke-direct {v0, v1, v5}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_53d

    .line 503
    invoke-direct {v0, v1, v5}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    int-to-double v2, v2

    .line 505
    sget-object v5, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 506
    sget-object v6, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 507
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v9, Lcom/codemao/midi/sun/ModelSource;

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v5, v13, v10}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    new-instance v5, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v5, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v8, v9, v2, v3, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_53d
    invoke-direct {v0, v1, v4}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_564

    .line 517
    invoke-direct {v0, v1, v4}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    int-to-double v2, v2

    .line 519
    sget-object v4, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 520
    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 521
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v4, v10, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V

    new-instance v4, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v7, v8, v2, v3, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_564
    const/16 v2, 0x2e

    .line 529
    invoke-virtual {v11, v2}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_57c

    const/16 v2, 0x2e

    .line 530
    invoke-virtual {v11, v2}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4060000000000000L  # 128.0

    div-double/2addr v2, v4

    .line 531
    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v4, v2, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;D)V

    :cond_57c
    const/16 v2, 0x2f

    .line 534
    invoke-virtual {v11, v2}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_594

    const/16 v2, 0x2f

    .line 535
    invoke-virtual {v11, v2}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4060000000000000L  # 128.0

    div-double/2addr v2, v4

    .line 537
    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v4, v2, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;D)V

    :cond_594
    const/16 v2, 0x8

    .line 540
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x34bc

    if-ge v2, v3, :cond_5b4

    const/16 v2, 0x8

    .line 542
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x9

    .line 544
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    .line 546
    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v4, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    .line 548
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_Q:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v2, v3}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_5b4
    const/16 v2, 0x33

    .line 552
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x64

    mul-int/lit8 v2, v2, 0x64

    const/16 v3, 0x34

    .line 554
    invoke-direct {v0, v1, v3}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v3

    add-int/2addr v2, v3

    if-eqz v2, :cond_5cd

    .line 557
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    int-to-short v2, v2

    invoke-direct {v0, v12, v3, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_5cd
    const/16 v2, 0x11

    .line 560
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_5e0

    const/16 v2, 0x11

    .line 561
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 563
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PAN:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v3, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_5e0
    const/16 v2, 0x30

    .line 565
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_5fa

    const/16 v2, 0x30

    .line 566
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 568
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    const v4, -0x413f574f

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-double v4, v2

    invoke-direct {v0, v12, v3, v4, v5}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;D)V

    :cond_5fa
    const/16 v2, 0xf

    .line 571
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_60d

    const/16 v2, 0xf

    .line 573
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 575
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_CHORUS:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v3, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_60d
    const/16 v2, 0x10

    .line 577
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    if-eqz v2, :cond_620

    const/16 v2, 0x10

    .line 579
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    .line 581
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_REVERB:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v12, v3, v2}, Lcom/codemao/midi/sun/SF2Instrument;->addValue(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelIdentifier;S)V

    :cond_620
    const/16 v2, 0x38

    .line 583
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_680

    const/16 v2, 0x38

    .line 585
    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/SF2Instrument;->getGeneratorValue(Ljava/util/Map;I)S

    move-result v1

    if-nez v1, :cond_64a

    .line 588
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 589
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    const/4 v5, 0x0

    mul-int/lit8 v6, v29, 0x64

    int-to-double v6, v6

    new-instance v8, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v8, v2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_663

    .line 593
    :cond_64a
    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 594
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    const/4 v5, 0x0

    rsub-int/lit8 v6, v1, 0x64

    mul-int v6, v6, v29

    int-to-double v6, v6

    new-instance v8, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v8, v2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :goto_663
    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 600
    sget-object v3, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 601
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v6, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v6, v2}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    mul-int/lit16 v1, v1, 0x80

    int-to-double v1, v1

    new-instance v7, Lcom/codemao/midi/sun/ModelDestination;

    invoke-direct {v7, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v5, v6, v1, v2, v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_680
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v3, Lcom/codemao/midi/sun/ModelSource;

    sget-object v4, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    new-instance v5, Lcom/codemao/midi/sun/SF2Instrument$1;

    invoke-direct {v5, v0}, Lcom/codemao/midi/sun/SF2Instrument$1;-><init>(Lcom/codemao/midi/sun/SF2Instrument;)V

    invoke-direct {v3, v4, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V

    const-wide v4, -0x3f5d400000000000L  # -2400.0

    new-instance v6, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v7, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v6, v7}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v12}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v1

    new-instance v8, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v3, Lcom/codemao/midi/sun/ModelSource;

    sget-object v2, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO2:Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-direct {v3, v2, v9, v4, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v4, Lcom/codemao/midi/sun/ModelSource;

    new-instance v2, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "midi_cc"

    const-string v6, "1"

    invoke-direct {v2, v5, v6, v9}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v2, v9, v9, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    const-wide/high16 v5, 0x4049000000000000L  # 50.0

    new-instance v7, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v2, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v7, v2}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual/range {v27 .. v27}, Lcom/codemao/midi/sun/SF2Layer;->getGlobalRegion()Lcom/codemao/midi/sun/SF2GlobalRegion;

    move-result-object v1

    if-eqz v1, :cond_6f3

    .line 638
    invoke-virtual/range {v27 .. v27}, Lcom/codemao/midi/sun/SF2Layer;->getGlobalRegion()Lcom/codemao/midi/sun/SF2GlobalRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SF2Region;->getModulators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Modulator;

    .line 639
    invoke-direct {v0, v12, v2}, Lcom/codemao/midi/sun/SF2Instrument;->convertModulator(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/SF2Modulator;)V

    goto :goto_6e3

    .line 642
    :cond_6f3
    invoke-virtual {v11}, Lcom/codemao/midi/sun/SF2Region;->getModulators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Modulator;

    .line 643
    invoke-direct {v0, v12, v2}, Lcom/codemao/midi/sun/SF2Instrument;->convertModulator(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/SF2Modulator;)V

    goto :goto_6fb

    :cond_70b
    if-eqz v25, :cond_725

    .line 646
    invoke-virtual/range {v25 .. v25}, Lcom/codemao/midi/sun/SF2Region;->getModulators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_715
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_725

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Modulator;

    .line 647
    invoke-direct {v0, v12, v2}, Lcom/codemao/midi/sun/SF2Instrument;->convertModulator(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/SF2Modulator;)V

    goto :goto_715

    .line 649
    :cond_725
    invoke-virtual/range {v24 .. v24}, Lcom/codemao/midi/sun/SF2Region;->getModulators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Modulator;

    .line 650
    invoke-direct {v0, v12, v2}, Lcom/codemao/midi/sun/SF2Instrument;->convertModulator(Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/SF2Modulator;)V

    goto :goto_72d

    :cond_73d
    move/from16 v5, v16

    move-object/from16 v10, v17

    move-object/from16 v4, v21

    move-object/from16 v1, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    const/4 v2, 0x0

    goto/16 :goto_60

    :cond_752
    move-object/from16 v23, v1

    return-object v23
.end method

.method public getRegions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2InstrumentRegion;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    return-object v0
.end method

.method public setGlobalZone(Lcom/codemao/midi/sun/SF2GlobalRegion;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Instrument;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 125
    iget v0, p0, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    const-string v1, " preset #"

    const/16 v2, 0x80

    if-ne v0, v2, :cond_24

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drumkit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instrument: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bank #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
