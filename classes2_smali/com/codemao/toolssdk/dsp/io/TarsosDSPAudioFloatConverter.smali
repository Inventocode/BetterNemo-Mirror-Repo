.class public abstract Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.super Ljava/lang/Object;
.source "TarsosDSPAudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SB;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SL;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8U;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8S;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32L;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64L;,
        Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatLSBFilter;
    }
.end annotation


# static fields
.field public static final PCM_FLOAT:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    const-string v1, "PCM_FLOAT"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->PCM_FLOAT:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConverter(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
    .registers 9

    .line 935
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 937
    :cond_8
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v0

    .line 938
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    div-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getChannels()I

    move-result v4

    mul-int v2, v2, v4

    if-eq v0, v2, :cond_1e

    return-object v1

    .line 941
    :cond_1e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getEncoding()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    move-result-object v0

    sget-object v2, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x18

    const/16 v5, 0x10

    const/16 v6, 0x20

    if-eqz v0, :cond_e8

    .line 942
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 943
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_42

    .line 944
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8S;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 945
    :cond_42
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_54

    .line 946
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_54

    .line 947
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 948
    :cond_54
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_66

    .line 949
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_66

    .line 950
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 951
    :cond_66
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_78

    .line 952
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_78

    .line 953
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 954
    :cond_78
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 955
    new-instance v1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSB;

    .line 956
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSB;-><init>(I)V

    goto/16 :goto_1f1

    .line 959
    :cond_8e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_9c

    .line 960
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8S;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    :goto_99
    move-object v1, v0

    goto/16 :goto_1f1

    .line 961
    :cond_9c
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_ae

    .line 962
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_ae

    .line 963
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16SL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 964
    :cond_ae
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_c0

    .line 965
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_c0

    .line 966
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24SL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 967
    :cond_c0
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_d2

    .line 968
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_d2

    .line 969
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32SL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 970
    :cond_d2
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 971
    new-instance v1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;

    .line 972
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;-><init>(I)V

    goto/16 :goto_1f1

    .line 975
    :cond_e8
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getEncoding()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    move-result-object v0

    sget-object v7, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    invoke-virtual {v0, v7}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 976
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 977
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_106

    .line 978
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8U;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 979
    :cond_106
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_118

    .line 980
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_118

    .line 981
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto :goto_99

    .line 982
    :cond_118
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_12b

    .line 983
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_12b

    .line 984
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 985
    :cond_12b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_13e

    .line 986
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_13e

    .line 987
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UB;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UB;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 988
    :cond_13e
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 989
    new-instance v1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUB;

    .line 990
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUB;-><init>(I)V

    goto/16 :goto_1f1

    .line 993
    :cond_154
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_161

    .line 994
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion8U;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 995
    :cond_161
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_174

    .line 996
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_174

    .line 997
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion16UL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 998
    :cond_174
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_187

    .line 999
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_187

    .line 1000
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion24UL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1001
    :cond_187
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_19a

    .line 1002
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_19a

    .line 1003
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UL;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32UL;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1004
    :cond_19a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 1005
    new-instance v1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUL;

    .line 1006
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xUL;-><init>(I)V

    goto :goto_1f1

    .line 1009
    :cond_1af
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getEncoding()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    move-result-object v0

    sget-object v4, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->PCM_FLOAT:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 1010
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v6, :cond_1d5

    .line 1011
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 1012
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1014
    :cond_1ce
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32L;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32L;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1015
    :cond_1d5
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1f1

    .line 1016
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 1017
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1019
    :cond_1ea
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64L;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64L;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1024
    :cond_1f1
    :goto_1f1
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getEncoding()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_207

    .line 1025
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getEncoding()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    move-result-object v0

    sget-object v2, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 1026
    :cond_207
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    rem-int/2addr v0, v3

    if-eqz v0, :cond_214

    .line 1027
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatLSBFilter;

    invoke-direct {v0, v1, p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatLSBFilter;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V

    move-object v1, v0

    :cond_214
    return-object v1
.end method


# virtual methods
.method public abstract toByteArray([FII[BI)[B
.end method

.method public toByteArray([F[B)[B
    .registers 9

    .line 1080
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract toFloatArray([BI[FII)[F
.end method
