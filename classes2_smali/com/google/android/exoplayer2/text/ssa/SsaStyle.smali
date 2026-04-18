.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    .registers 9

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    .line 112
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 113
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    .line 114
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    .line 115
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    .line 116
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->underline:Z

    .line 117
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->strikeout:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    .registers 16

    const-string v0, "Style:"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x6

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    array-length v1, v0

    iget v2, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    const-string v3, "SsaStyle"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_3b

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v6

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, 0x2

    aput-object p0, p1, v0

    const-string p0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 127
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 133
    :cond_3b
    :try_start_3b
    new-instance v1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    iget v2, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v2, v0, v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    iget v7, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_55

    .line 136
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v7

    goto :goto_56

    :cond_55
    const/4 v7, -0x1

    .line 138
    :goto_56
    iget v9, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v9, v8, :cond_65

    .line 139
    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_66

    :cond_65
    move-object v9, v4

    .line 141
    :goto_66
    iget v10, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v10, v8, :cond_75

    .line 142
    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v10

    goto :goto_78

    :cond_75
    const v10, -0x800001

    .line 143
    :goto_78
    iget v11, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v11, v8, :cond_8a

    aget-object v11, v0, v11

    .line 145
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8a

    const/4 v11, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v11, 0x0

    :goto_8b
    iget v12, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v12, v8, :cond_9d

    aget-object v12, v0, v12

    .line 147
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d

    const/4 v12, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v12, 0x0

    :goto_9e
    iget v13, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v13, v8, :cond_b0

    aget-object v13, v0, v13

    .line 149
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b0

    const/4 v13, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v13, 0x0

    :goto_b1
    iget p1, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq p1, v8, :cond_c3

    aget-object p1, v0, p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const/4 p1, 0x1

    goto :goto_c4

    :cond_c3
    const/4 p1, 0x0

    :goto_c4
    move-object v5, v1

    move-object v6, v2

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, p1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_cf} :catch_d0

    return-object v1

    :catch_d0
    move-exception p1

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private static isValidAlignment(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .registers 3

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_10

    return v0

    :catch_f
    nop

    :cond_10
    const-string v0, "Ignoring unknown alignment: "

    .line 168
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_21
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static parseBooleanValue(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 239
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_d

    const/4 v1, 0x1

    if-eq p0, v1, :cond_b

    const/4 v2, -0x1

    if-ne p0, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception v1

    .line 242
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse boolean value: \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    :try_start_0
    const-string v0, "&H"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_18

    .line 213
    :cond_14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_18
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 215
    :goto_24
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_51

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    .line 221
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    .line 222
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    .line 223
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    and-long/2addr v2, v6

    .line 224
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    .line 225
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_51
    move-exception v0

    .line 217
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to parse color expression: \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)F
    .registers 4

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 232
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to parse font size: \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method
