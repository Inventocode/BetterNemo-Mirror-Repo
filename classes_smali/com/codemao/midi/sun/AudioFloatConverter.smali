.class public abstract Lcom/codemao/midi/sun/AudioFloatConverter;
.super Ljava/lang/Object;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SB;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SL;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8U;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32L;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64B;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64L;,
        Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;
    }
.end annotation


# static fields
.field public static final PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;


# instance fields
.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    const-string v1, "PCM_FLOAT"

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;
    .registers 9

    .line 911
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 913
    :cond_8
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    .line 914
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    div-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v4

    mul-int v2, v2, v4

    if-eq v0, v2, :cond_1e

    return-object v1

    .line 917
    :cond_1e
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v2, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v2}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x18

    const/16 v5, 0x10

    const/16 v6, 0x20

    if-eqz v0, :cond_e8

    .line 918
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 919
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_42

    .line 920
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 921
    :cond_42
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_54

    .line 922
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_54

    .line 923
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 924
    :cond_54
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_66

    .line 925
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_66

    .line 926
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 927
    :cond_66
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_78

    .line 928
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_78

    .line 929
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 930
    :cond_78
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 931
    new-instance v1, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSB;

    .line 932
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSB;-><init>(I)V

    goto/16 :goto_1f1

    .line 935
    :cond_8e
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_9c

    .line 936
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    :goto_99
    move-object v1, v0

    goto/16 :goto_1f1

    .line 937
    :cond_9c
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_ae

    .line 938
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_ae

    .line 939
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 940
    :cond_ae
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_c0

    .line 941
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_c0

    .line 942
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 943
    :cond_c0
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_d2

    .line 944
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_d2

    .line 945
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32SL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 946
    :cond_d2
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 947
    new-instance v1, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSL;

    .line 948
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xSL;-><init>(I)V

    goto/16 :goto_1f1

    .line 951
    :cond_e8
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v7, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v7}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 952
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 953
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_106

    .line 954
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8U;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 955
    :cond_106
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_118

    .line 956
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_118

    .line 957
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto :goto_99

    .line 958
    :cond_118
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_12b

    .line 959
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_12b

    .line 960
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 961
    :cond_12b
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_13e

    .line 962
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_13e

    .line 963
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UB;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UB;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 964
    :cond_13e
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 965
    new-instance v1, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUB;

    .line 966
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUB;-><init>(I)V

    goto/16 :goto_1f1

    .line 969
    :cond_154
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v3, :cond_161

    .line 970
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8U;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8U;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 971
    :cond_161
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v3, :cond_174

    .line 972
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v5, :cond_174

    .line 973
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 974
    :cond_174
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v5, :cond_187

    .line 975
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v4, :cond_187

    .line 976
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24UL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 977
    :cond_187
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v4, :cond_19a

    .line 978
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-gt v0, v6, :cond_19a

    .line 979
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UL;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32UL;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 980
    :cond_19a
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-le v0, v6, :cond_1f1

    .line 981
    new-instance v1, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUL;

    .line 982
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    invoke-direct {v1, v0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32xUL;-><init>(I)V

    goto :goto_1f1

    .line 985
    :cond_1af
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v4, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v4}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 986
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v6, :cond_1d5

    .line 987
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 988
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 990
    :cond_1ce
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32L;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32L;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 991
    :cond_1d5
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1f1

    .line 992
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 993
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64B;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64B;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 995
    :cond_1ea
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64L;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion64L;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V

    goto/16 :goto_99

    .line 1000
    :cond_1f1
    :goto_1f1
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_207

    .line 1001
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v2, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v2}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 1002
    :cond_207
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    rem-int/2addr v0, v3

    if-eqz v0, :cond_214

    .line 1003
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;

    invoke-direct {v0, v1, p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter;Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    move-object v1, v0

    :cond_214
    if-eqz v1, :cond_218

    .line 1007
    iput-object p0, v1, Lcom/codemao/midi/sun/AudioFloatConverter;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    :cond_218
    return-object v1
.end method


# virtual methods
.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 1014
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public abstract toByteArray([FII[BI)[B
.end method

.method public toByteArray([FI[B)[B
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    .line 1052
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public toByteArray([FI[BI)[B
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 1043
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract toFloatArray([BI[FII)[F
.end method

.method public toFloatArray([B[FII)[F
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1022
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object p1

    return-object p1
.end method
