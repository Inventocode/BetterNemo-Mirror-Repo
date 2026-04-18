.class Ljxl/biff/formula/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field private static final ZZ_ACTION:[I

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_CMAP:[C

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_TRANS:[I


# instance fields
.field private emptyString:Z

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private yychar:I

.field private yyline:I

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzPushbackPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "\b\u0000\u0003\u0015\u0015\u0000\u0001\u0015\u0001\u0014\u0001\u0011\u0001\u0016\u0001\b\u0002\u0000\u0001\u0012\u0001\u0005\u0001\u0006\u0001!\u0001\u001f\u0001\u0004\u0001 \u0001\u0007\u0001\u001b\u0001\u001c\t\u0002\u0001\u0003\u0001\u0000\u0001$\u0001#\u0001\"\u0001\u001e\u0001\u0000\u0001\u000e\u0002\u0001\u0001\u0018\u0001\f\u0001\r\u0002\u0001\u0001\u0019\u0002\u0001\u0001\u000f\u0001\u001d\u0001\u0017\u0003\u0001\u0001\n\u0001\u0010\u0001\t\u0001\u000b\u0001\u001a\u0004\u0001\u0004\u0000\u0001\u0013\u0001\u0000\u001a\u0001ﾅ\u0000"

    .line 63
    invoke-static {v0}, Ljxl/biff/formula/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_CMAP:[C

    .line 68
    invoke-static {}, Ljxl/biff/formula/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_ACTION:[I

    .line 103
    invoke-static {}, Ljxl/biff/formula/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_ROWMAP:[I

    .line 140
    invoke-static {}, Ljxl/biff/formula/Yylex;->zzUnpackTrans()[I

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_TRANS:[I

    const-string v0, "Unkown internal scanner error"

    const-string v1, "Error: could not match input"

    const-string v2, "Error: pushback value was too large"

    .line 238
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 247
    invoke-static {}, Ljxl/biff/formula/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Yylex;->ZZ_ATTRIBUTE:[I

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Ljxl/biff/formula/Yylex;->zzLexicalState:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    .line 288
    iput-object v0, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    .line 350
    iput-object p1, p0, Ljxl/biff/formula/Yylex;->zzReader:Ljava/io/Reader;

    return-void
.end method

.method private zzRefill()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    const/4 v1, 0x0

    if-lez v0, :cond_25

    .line 393
    iget-object v2, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    iget v3, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    iget v2, p0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    .line 399
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    .line 400
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    .line 401
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzPushbackPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/formula/Yylex;->zzPushbackPos:I

    .line 402
    iput v1, p0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    .line 406
    :cond_25
    iget v0, p0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    array-length v3, v2

    if-lt v0, v3, :cond_36

    mul-int/lit8 v0, v0, 0x2

    .line 408
    new-array v0, v0, [C

    .line 409
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput-object v0, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    .line 414
    :cond_36
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->zzReader:Ljava/io/Reader;

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    iget v3, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_46

    const/4 v0, 0x1

    return v0

    .line 421
    :cond_46
    iget v2, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    add-int/2addr v2, v0

    iput v2, p0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    return v1
.end method

.method private zzScanError(I)V
    .registers 3

    .line 527
    :try_start_0
    sget-object v0, Ljxl/biff/formula/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    .line 530
    :catch_5
    sget-object p1, Ljxl/biff/formula/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 533
    :goto_a
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .registers 8

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    add-int/lit8 v2, v1, 0x1

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_13
    add-int/lit8 v4, p1, 0x1

    .line 94
    aput v2, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1e

    move v1, v3

    move p1, v4

    goto :goto_5

    :cond_1e
    move p1, v4

    goto :goto_13

    :cond_20
    return p1
.end method

.method private static zzUnpackAction()[I
    .registers 3

    const/16 v0, 0x5e

    new-array v0, v0, [I

    const-string v1, "\u0001\u0000\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0000\u0002\u0002\u0001\b\u0001\u0000\u0001\t\u0001\u0000\u0001\n\u0001\u000b\u0001\f\u0001\r\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0001\u0001\u0011\u0001\u0002\u0001\u0012\u0001\u0000\u0001\u0013\u0001\u0000\u0001\u0002\u0003\u0000\u0002\u0002\u0005\u0000\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0002\u0001\u0000\u0001\u0017\u0001\u0000\u0001\u0012\u0002\u0000\u0001\u0018\u0001\u0000\u0002\u0002\b\u0000\u0001\u0017\u0001\u0000\u0001\u0019\u0001\u0000\u0001\u001a\b\u0000\u0001\u001b\u0002\u0000\u0001\u0019\u0002\u0000\u0001\u001c\u0004\u0000\u0001\u001d\u0003\u0000\u0001\u001d\u0001\u0000\u0001\u001e\u0001\u0000"

    const/4 v2, 0x0

    .line 83
    invoke-static {v1, v2, v0}, Ljxl/biff/formula/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .registers 8

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    add-int/lit8 v2, v1, 0x1

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_13
    add-int/lit8 v4, p1, 0x1

    .line 272
    aput v2, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1e

    move v1, v3

    move p1, v4

    goto :goto_5

    :cond_1e
    move p1, v4

    goto :goto_13

    :cond_20
    return p1
.end method

.method private static zzUnpackAttribute()[I
    .registers 3

    const/16 v0, 0x5e

    new-array v0, v0, [I

    const-string v1, "\u0001\u0000\u0003\u0001\u0004\t\u0001\u0000\u0002\u0001\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0004\t\u0001\u0001\u0001\t\u0002\u0001\u0001\t\u0002\u0001\u0001\u0000\u0001\t\u0001\u0000\u0001\u0001\u0003\u0000\u0002\u0001\u0005\u0000\u0003\t\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0002\u0000\u0001\u0001\u0001\u0000\u0002\u0001\b\u0000\u0001\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\b\u0000\u0001\u0001\u0002\u0000\u0001\u0001\u0002\u0000\u0001\t\u0004\u0000\u0001\u0001\u0003\u0000\u0001\t\u0001\u0000\u0001\u0001\u0001\u0000"

    const/4 v2, 0x0

    .line 261
    invoke-static {v1, v2, v0}, Ljxl/biff/formula/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .registers 7

    const/high16 v0, 0x10000

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x64

    if-ge v1, v3, :cond_23

    add-int/lit8 v3, v1, 0x1

    .line 374
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v3, 0x1

    .line 375
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_16
    add-int/lit8 v5, v2, 0x1

    .line 376
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_21

    move v1, v4

    move v2, v5

    goto :goto_6

    :cond_21
    move v2, v5

    goto :goto_16

    :cond_23
    return-object v0
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .registers 8

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    add-int/lit8 v2, v1, 0x1

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    aput v1, p2, p1

    move p1, v3

    move v1, v4

    goto :goto_5

    :cond_1d
    return p1
.end method

.method private static zzUnpackRowMap()[I
    .registers 3

    const/16 v0, 0x5e

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u0000%\u0000J\u0000o\u0000\u0094\u0000\u0094\u0000\u0094\u0000\u0094\u0000¹\u0000Þ\u0000ă\u0000\u0094\u0000Ĩ\u0000\u0094\u0000ō\u0000\u0094\u0000\u0094\u0000\u0094\u0000\u0094\u0000Ų\u0000\u0094\u0000Ɨ\u0000Ƽ\u0000\u0094\u0000ǡ\u0000Ȇ\u0000ȫ\u0000\u0094\u0000ɐ\u0000ɵ\u0000ʚ\u0000ʿ\u0000ˤ\u0000̉\u0000̮\u0000͓\u0000͸\u0000Ν\u0000ς\u0000ϧ\u0000\u0094\u0000\u0094\u0000\u0094\u0000Ќ\u0000б\u0000і\u0000ѻ\u0000Ҡ\u0000Ӆ\u0000Ӫ\u0000ʿ\u0000ԏ\u0000Դ\u0000ՙ\u0000վ\u0000֣\u0000׈\u0000׭\u0000ؒ\u0000ط\u0000ٜ\u0000ځ\u0000\u0094\u0000ڦ\u0000ۋ\u0000ۋ\u0000Ќ\u0000۰\u0000ܕ\u0000ܺ\u0000ݟ\u0000ބ\u0000ީ\u0000ߎ\u0000߳\u0000࠘\u0000࠘\u0000࠽\u0000ࡢ\u0000ࢇ\u0000ࢬ\u0000\u0094\u0000࣑\u0000ࣶ\u0000छ\u0000ी\u0000॥\u0000ঊ\u0000য\u0000৔\u0000\u0094\u0000৹\u0000ਞ\u0000ਞ"

    const/4 v2, 0x0

    .line 122
    invoke-static {v1, v2, v0}, Ljxl/biff/formula/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .registers 8

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    add-int/lit8 v2, v1, 0x1

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 224
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_15
    add-int/lit8 v4, p1, 0x1

    .line 226
    aput v2, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_20

    move v1, v3

    move p1, v4

    goto :goto_5

    :cond_20
    move p1, v4

    goto :goto_15

    :cond_22
    return p1
.end method

.method private static zzUnpackTrans()[I
    .registers 3

    const/16 v0, 0xa43

    new-array v0, v0, [I

    const-string v1, "\u0001\u0000\u0001\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\b\u0001\u0000\u0001\t\u0001\n\u0003\u0003\u0001\u000b\u0003\u0003\u0001\f\u0001\r\u0002\u0000\u0001\u000e\u0001\u000f\u0004\u0003\u0001\u0010\u0001\u0004\u0001\u0003\u0001\u0000\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0011\u0017\u0001\u0018\u0013\u0017\u0001\u0000\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\b\u0019\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004\u0019\u0001\u0000\u0001\u001a\u0001\u0019\t\u0000\u0001\u0004\u0004\u0000\u0001 \u0014\u0000\u0001\u0004.\u0000\u0001!\u0007\u0000\b!\u0006\u0000\u0004!\u0002\u0000\u0001!\b\u0000\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0001\u0019\u0001\"\u0006\u0019\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004\u0019\u0001\u0000\u0001\u001a\u0001\u0019\b\u0000\u0001\u0019\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0005\u0019\u0001#\u0002\u0019\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004\u0019\u0001\u0000\u0001\u001a\u0001\u0019\u0007\u0000\u0012\r\u0001$\u0012\r\n\u0000\u0001%\f\u0000\u0001&\u0001\'\u0001\u0000\u0001(-\u0000\u0001)#\u0000\u0001*\u0001+\u0001\u0000\u0011\u0017\u0001\u0000\u0013\u0017\u0001\u0000\u0001,\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\b,\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001a\u0001,\b\u0000\u0001\u001e\u0001\u001a\u0001-\u0005\u0000\b\u001e\u0002\u0000\u0001\u001e\u0003\u0000\u0004\u001e\u0001\u0000\u0001\u001a\u0001\u001e\b\u0000\u0001.\u0006\u0000\u0001/\b.\u0006\u0000\u0004.\u0002\u0000\u0001.\t\u0000\u00010\u0019\u0000\u00010\t\u0000\u0002\u001e\u0006\u0000\b\u001e\u0002\u0000\u0001\u001e\u0003\u0000\u0004\u001e\u0001\u0000\u0002\u001e\b\u0000\u00011\u0006\u0000\u00012\b1\u0006\u0000\u00041\u0002\u0000\u00011\t\u0000\u00013\u0019\u0000\u00013\t\u0000\u00014\u00010\u0001\u001b\u0004\u0000\u0001\u001d\b4\u0006\u0000\u00044\u0001\u0000\u00010\u00014\b\u0000\u0001,\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0002,\u00015\u0005,\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001a\u0001,\b\u0000\u0001,\u0001\u001a\u0001\u001b\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0006,\u00016\u0001,\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001a\u0001,\u001b\u0000\u00017\u001c\u0000\u00018#\u0000\u00019\u0002\u0000\u0001:/\u0000\u0001;\u0019\u0000\u0001<\u0017\u0000\u0001,\u0001\u001e\u0002\u0000\u0001\u001c\u0003\u0000\b,\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001e\u0001,\b\u0000\u0001=\u0006\u0000\u0001>\b=\u0006\u0000\u0004=\u0002\u0000\u0001=\b\u0000\u0001?\u0007\u0000\b?\u0006\u0000\u0004?\u0002\u0000\u0001?\b\u0000\u0001.\u0007\u0000\b.\u0006\u0000\u0004.\u0002\u0000\u0001.\t\u0000\u00010\u0001-\u0018\u0000\u00010\t\u0000\u0001@\u0001A\u0005\u0000\u0001B\b@\u0006\u0000\u0004@\u0001\u0000\u0001A\u0001@\b\u0000\u00011\u0007\u0000\b1\u0006\u0000\u00041\u0002\u0000\u00011\t\u0000\u00010\u0001\u001b\u0004\u0000\u0001\u001d\u0013\u0000\u00010\t\u0000\u0001,\u0001\u001e\u0002\u0000\u0001\u001c\u0003\u0000\u0003,\u0001C\u0004,\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001e\u0001,\b\u0000\u0001,\u0001\u001e\u0002\u0000\u0001\u001c\u0003\u0000\u0007,\u00015\u0002\u0000\u0001\u001e\u0001\u001f\u0002\u0000\u0004,\u0001\u0000\u0001\u001e\u0001,\b\u0000\u0001D\u0006\u0000\u0001E\bD\u0006\u0000\u0004D\u0002\u0000\u0001D\u0014\u0000\u0001F&\u0000\u0001G\r\u0000\u0001F$\u0000\u0001H!\u0000\u0001I\u0019\u0000\u0001J\u0016\u0000\u0001K\u0001L\u0005\u0000\u0001M\bK\u0006\u0000\u0004K\u0001\u0000\u0001L\u0001K\b\u0000\u0001=\u0007\u0000\b=\u0006\u0000\u0004=\u0002\u0000\u0001=\t\u0000\u0001A\u0005\u0000\u0001B\u0013\u0000\u0001A\n\u0000\u0001A\u0019\u0000\u0001A\t\u0000\u0001N\u0001O\u0001P\u0004\u0000\u0001Q\bN\u0006\u0000\u0004N\u0001\u0000\u0001O\u0001N\b\u0000\u0001D\u0007\u0000\bD\u0006\u0000\u0004D\u0002\u0000\u0001D\u001b\u0000\u0001R\u001f\u0000\u0001F!\u0000\u0001S3\u0000\u0001T\u0014\u0000\u0001U\u001b\u0000\u0001L\u0005\u0000\u0001M\u0013\u0000\u0001L\n\u0000\u0001L\u0019\u0000\u0001L\n\u0000\u0001O\u0001P\u0004\u0000\u0001Q\u0013\u0000\u0001O\n\u0000\u0001O\u0001V\u0018\u0000\u0001O\t\u0000\u0001W\u0006\u0000\u0001X\bW\u0006\u0000\u0004W\u0002\u0000\u0001W\t\u0000\u0001O\u0019\u0000\u0001O&\u0000\u0001R\"\u0000\u0001F\u0014\u0000\u0001F\u0019\u0000\u0001Y\u0006\u0000\u0001Z\bY\u0006\u0000\u0004Y\u0002\u0000\u0001Y\b\u0000\u0001[\u0007\u0000\b[\u0006\u0000\u0004[\u0002\u0000\u0001[\b\u0000\u0001W\u0007\u0000\bW\u0006\u0000\u0004W\u0002\u0000\u0001W\b\u0000\u0001\\\u0001]\u0005\u0000\u0001^\b\\\u0006\u0000\u0004\\\u0001\u0000\u0001]\u0001\\\b\u0000\u0001Y\u0007\u0000\bY\u0006\u0000\u0004Y\u0002\u0000\u0001Y\t\u0000\u0001]\u0005\u0000\u0001^\u0013\u0000\u0001]\n\u0000\u0001]\u0019\u0000\u0001]\b\u0000"

    const/4 v2, 0x0

    .line 214
    invoke-static {v1, v2, v0}, Ljxl/biff/formula/Yylex;->zzUnpackTrans(Ljava/lang/String;I[I)I

    return-object v0
.end method


# virtual methods
.method getPos()I
    .registers 2

    .line 327
    iget v0, p0, Ljxl/biff/formula/Yylex;->yychar:I

    return v0
.end method

.method setExternalSheet(Ljxl/biff/formula/ExternalSheet;)V
    .registers 2

    .line 334
    iput-object p1, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    return-void
.end method

.method setNameTable(Ljxl/biff/WorkbookMethods;)V
    .registers 2

    .line 339
    iput-object p1, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    return-void
.end method

.method public final yybegin(I)V
    .registers 2

    .line 474
    iput p1, p0, Ljxl/biff/formula/Yylex;->zzLexicalState:I

    return-void
.end method

.method public yylex()Ljxl/biff/formula/ParseItem;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 568
    iget v1, v0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    .line 569
    iget-object v2, v0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    .line 570
    sget-object v3, Ljxl/biff/formula/Yylex;->ZZ_CMAP:[C

    .line 572
    sget-object v4, Ljxl/biff/formula/Yylex;->ZZ_TRANS:[I

    .line 573
    sget-object v5, Ljxl/biff/formula/Yylex;->ZZ_ROWMAP:[I

    .line 574
    sget-object v6, Ljxl/biff/formula/Yylex;->ZZ_ATTRIBUTE:[I

    .line 577
    :cond_e
    :goto_e
    :pswitch_e  #0x9, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c
    iget v7, v0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    .line 579
    iget v8, v0, Ljxl/biff/formula/Yylex;->yychar:I

    iget v9, v0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    sub-int v10, v7, v9

    add-int/2addr v8, v10

    iput v8, v0, Ljxl/biff/formula/Yylex;->yychar:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1b
    const/4 v11, 0x1

    if-ge v9, v7, :cond_49

    .line 584
    aget-char v12, v2, v9

    const/16 v13, 0x85

    if-eq v12, v13, :cond_40

    const/16 v13, 0x2028

    if-eq v12, v13, :cond_40

    const/16 v13, 0x2029

    if-eq v12, v13, :cond_40

    packed-switch v12, :pswitch_data_1ee

    :goto_2f
    goto :goto_45

    .line 594
    :pswitch_30  #0xd
    iget v10, v0, Ljxl/biff/formula/Yylex;->yyline:I

    add-int/2addr v10, v11

    iput v10, v0, Ljxl/biff/formula/Yylex;->yyline:I

    const/4 v10, 0x1

    goto :goto_46

    :pswitch_37  #0xa
    if-eqz v10, :cond_3a

    goto :goto_2f

    .line 601
    :cond_3a
    iget v12, v0, Ljxl/biff/formula/Yylex;->yyline:I

    add-int/2addr v12, v11

    iput v12, v0, Ljxl/biff/formula/Yylex;->yyline:I

    goto :goto_46

    .line 590
    :cond_40
    :pswitch_40  #0xb, 0xc
    iget v10, v0, Ljxl/biff/formula/Yylex;->yyline:I

    add-int/2addr v10, v11

    iput v10, v0, Ljxl/biff/formula/Yylex;->yyline:I

    :goto_45
    const/4 v10, 0x0

    :goto_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_49
    if-eqz v10, :cond_7a

    const/16 v9, 0xa

    if-ge v7, v1, :cond_55

    .line 613
    aget-char v10, v2, v7

    if-ne v10, v9, :cond_59

    const/4 v9, 0x1

    goto :goto_73

    .line 614
    :cond_55
    iget-boolean v10, v0, Ljxl/biff/formula/Yylex;->zzAtEOF:Z

    if-eqz v10, :cond_5b

    :cond_59
    :goto_59
    const/4 v9, 0x0

    goto :goto_73

    .line 617
    :cond_5b
    invoke-direct/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->zzRefill()Z

    move-result v1

    .line 618
    iget v2, v0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    .line 619
    iget v7, v0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    .line 620
    iget-object v10, v0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    if-eqz v1, :cond_6a

    move v1, v2

    move-object v2, v10

    goto :goto_59

    .line 624
    :cond_6a
    aget-char v1, v10, v7

    if-ne v1, v9, :cond_70

    const/4 v9, 0x1

    goto :goto_71

    :cond_70
    const/4 v9, 0x0

    :goto_71
    move v1, v2

    move-object v2, v10

    :goto_73
    if-eqz v9, :cond_7a

    .line 626
    iget v9, v0, Ljxl/biff/formula/Yylex;->yyline:I

    sub-int/2addr v9, v11

    iput v9, v0, Ljxl/biff/formula/Yylex;->yyline:I

    .line 630
    :cond_7a
    iput v7, v0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    iput v7, v0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    .line 632
    iget v9, v0, Ljxl/biff/formula/Yylex;->zzLexicalState:I

    iput v9, v0, Ljxl/biff/formula/Yylex;->zzState:I

    const/4 v9, -0x1

    move v10, v7

    const/4 v12, -0x1

    :goto_85
    if-ge v7, v1, :cond_8c

    add-int/lit8 v13, v7, 0x1

    .line 639
    aget-char v7, v2, v7

    goto :goto_b5

    .line 640
    :cond_8c
    iget-boolean v13, v0, Ljxl/biff/formula/Yylex;->zzAtEOF:Z

    if-eqz v13, :cond_92

    :goto_90
    const/4 v7, -0x1

    goto :goto_d1

    .line 646
    :cond_92
    iput v7, v0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    .line 647
    iput v10, v0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    .line 648
    invoke-direct/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->zzRefill()Z

    move-result v1

    .line 650
    iget v2, v0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    .line 651
    iget v10, v0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    .line 652
    iget-object v7, v0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    .line 653
    iget v13, v0, Ljxl/biff/formula/Yylex;->zzEndRead:I

    if-eqz v1, :cond_a7

    move-object v2, v7

    move v1, v13

    goto :goto_90

    :cond_a7
    add-int/lit8 v1, v2, 0x1

    .line 659
    aget-char v2, v7, v2

    move/from16 v16, v13

    move v13, v1

    move/from16 v1, v16

    move-object/from16 v17, v7

    move v7, v2

    move-object/from16 v2, v17

    .line 662
    :goto_b5
    iget v14, v0, Ljxl/biff/formula/Yylex;->zzState:I

    aget v14, v5, v14

    aget-char v15, v3, v7

    add-int/2addr v14, v15

    aget v14, v4, v14

    if-ne v14, v9, :cond_c1

    goto :goto_d1

    .line 664
    :cond_c1
    iput v14, v0, Ljxl/biff/formula/Yylex;->zzState:I

    .line 666
    aget v15, v6, v14

    and-int/lit8 v9, v15, 0x1

    if-ne v9, v11, :cond_1e9

    and-int/lit8 v9, v15, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1e5

    move v10, v13

    move v12, v14

    .line 677
    :goto_d1
    iput v10, v0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    if-gez v12, :cond_d6

    goto :goto_da

    .line 679
    :cond_d6
    sget-object v9, Ljxl/biff/formula/Yylex;->ZZ_ACTION:[I

    aget v12, v9, v12

    :goto_da
    packed-switch v12, :pswitch_data_1fa

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1e0

    .line 801
    iget v7, v0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    iget v8, v0, Ljxl/biff/formula/Yylex;->zzCurrentPos:I

    if-ne v7, v8, :cond_1e0

    .line 802
    iput-boolean v11, v0, Ljxl/biff/formula/Yylex;->zzAtEOF:Z

    const/4 v1, 0x0

    return-object v1

    .line 745
    :pswitch_ea  #0x1e
    new-instance v1, Ljxl/biff/formula/Area3d;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/Area3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v1

    .line 697
    :pswitch_f6  #0x1d
    new-instance v1, Ljxl/biff/formula/ColumnRange3d;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/ColumnRange3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v1

    .line 785
    :pswitch_102  #0x1c
    new-instance v1, Ljxl/biff/formula/ErrorConstant;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/ErrorConstant;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 761
    :pswitch_10c  #0x1b
    new-instance v1, Ljxl/biff/formula/Area;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/Area;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 713
    :pswitch_116  #0x1a
    new-instance v1, Ljxl/biff/formula/BooleanValue;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/BooleanValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 709
    :pswitch_120  #0x19
    new-instance v1, Ljxl/biff/formula/CellReference3d;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/CellReference3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v1

    .line 693
    :pswitch_12c  #0x18
    new-instance v1, Ljxl/biff/formula/DoubleValue;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/DoubleValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 765
    :pswitch_136  #0x17
    new-instance v1, Ljxl/biff/formula/ColumnRange;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/ColumnRange;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 733
    :pswitch_140  #0x16
    new-instance v1, Ljxl/biff/formula/LessEqual;

    invoke-direct {v1}, Ljxl/biff/formula/LessEqual;-><init>()V

    return-object v1

    .line 729
    :pswitch_146  #0x15
    new-instance v1, Ljxl/biff/formula/NotEqual;

    invoke-direct {v1}, Ljxl/biff/formula/NotEqual;-><init>()V

    return-object v1

    .line 757
    :pswitch_14c  #0x14
    new-instance v1, Ljxl/biff/formula/GreaterEqual;

    invoke-direct {v1}, Ljxl/biff/formula/GreaterEqual;-><init>()V

    return-object v1

    .line 777
    :pswitch_152  #0x13
    new-instance v1, Ljxl/biff/formula/StringFunction;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/StringFunction;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 753
    :pswitch_15c  #0x12
    new-instance v1, Ljxl/biff/formula/CellReference;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/CellReference;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 721
    :pswitch_166  #0x11
    invoke-virtual {v0, v8}, Ljxl/biff/formula/Yylex;->yybegin(I)V

    iget-boolean v7, v0, Ljxl/biff/formula/Yylex;->emptyString:Z

    if-eqz v7, :cond_e

    new-instance v1, Ljxl/biff/formula/StringValue;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljxl/biff/formula/StringValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 737
    :pswitch_175  #0x10
    new-instance v1, Ljxl/biff/formula/LessThan;

    invoke-direct {v1}, Ljxl/biff/formula/LessThan;-><init>()V

    return-object v1

    .line 717
    :pswitch_17b  #0xf
    new-instance v1, Ljxl/biff/formula/Equal;

    invoke-direct {v1}, Ljxl/biff/formula/Equal;-><init>()V

    return-object v1

    .line 749
    :pswitch_181  #0xe
    new-instance v1, Ljxl/biff/formula/GreaterThan;

    invoke-direct {v1}, Ljxl/biff/formula/GreaterThan;-><init>()V

    return-object v1

    .line 793
    :pswitch_187  #0xd
    new-instance v1, Ljxl/biff/formula/Multiply;

    invoke-direct {v1}, Ljxl/biff/formula/Multiply;-><init>()V

    return-object v1

    .line 681
    :pswitch_18d  #0xc
    new-instance v1, Ljxl/biff/formula/Minus;

    invoke-direct {v1}, Ljxl/biff/formula/Minus;-><init>()V

    return-object v1

    .line 781
    :pswitch_193  #0xb
    new-instance v1, Ljxl/biff/formula/Plus;

    invoke-direct {v1}, Ljxl/biff/formula/Plus;-><init>()V

    return-object v1

    .line 705
    :pswitch_199  #0xa
    new-instance v1, Ljxl/biff/formula/Divide;

    invoke-direct {v1}, Ljxl/biff/formula/Divide;-><init>()V

    return-object v1

    .line 725
    :pswitch_19f  #0x8
    iput-boolean v11, v0, Ljxl/biff/formula/Yylex;->emptyString:Z

    invoke-virtual {v0, v11}, Ljxl/biff/formula/Yylex;->yybegin(I)V

    goto/16 :goto_e

    .line 685
    :pswitch_1a6  #0x7
    new-instance v1, Ljxl/biff/formula/CloseParentheses;

    invoke-direct {v1}, Ljxl/biff/formula/CloseParentheses;-><init>()V

    return-object v1

    .line 797
    :pswitch_1ac  #0x6
    new-instance v1, Ljxl/biff/formula/OpenParentheses;

    invoke-direct {v1}, Ljxl/biff/formula/OpenParentheses;-><init>()V

    return-object v1

    .line 741
    :pswitch_1b2  #0x5
    new-instance v1, Ljxl/biff/formula/ArgumentSeparator;

    invoke-direct {v1}, Ljxl/biff/formula/ArgumentSeparator;-><init>()V

    return-object v1

    .line 701
    :pswitch_1b8  #0x4
    new-instance v1, Ljxl/biff/formula/RangeSeparator;

    invoke-direct {v1}, Ljxl/biff/formula/RangeSeparator;-><init>()V

    return-object v1

    .line 689
    :pswitch_1be  #0x3
    new-instance v1, Ljxl/biff/formula/IntegerValue;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/IntegerValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 773
    :pswitch_1c8  #0x2
    new-instance v1, Ljxl/biff/formula/NameRange;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v1

    .line 769
    :pswitch_1d4  #0x1
    iput-boolean v8, v0, Ljxl/biff/formula/Yylex;->emptyString:Z

    new-instance v1, Ljxl/biff/formula/StringValue;

    invoke-virtual/range {p0 .. p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/formula/StringValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 806
    :cond_1e0
    invoke-direct {v0, v11}, Ljxl/biff/formula/Yylex;->zzScanError(I)V

    goto/16 :goto_e

    :cond_1e5
    const/4 v9, -0x1

    move v10, v13

    move v12, v14

    goto :goto_1ea

    :cond_1e9
    const/4 v9, -0x1

    :goto_1ea
    move v7, v13

    goto/16 :goto_85

    nop

    :pswitch_data_1ee
    .packed-switch 0xa
        :pswitch_37  #0000000a
        :pswitch_40  #0000000b
        :pswitch_40  #0000000c
        :pswitch_30  #0000000d
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1d4  #00000001
        :pswitch_1c8  #00000002
        :pswitch_1be  #00000003
        :pswitch_1b8  #00000004
        :pswitch_1b2  #00000005
        :pswitch_1ac  #00000006
        :pswitch_1a6  #00000007
        :pswitch_19f  #00000008
        :pswitch_e  #00000009
        :pswitch_199  #0000000a
        :pswitch_193  #0000000b
        :pswitch_18d  #0000000c
        :pswitch_187  #0000000d
        :pswitch_181  #0000000e
        :pswitch_17b  #0000000f
        :pswitch_175  #00000010
        :pswitch_166  #00000011
        :pswitch_15c  #00000012
        :pswitch_152  #00000013
        :pswitch_14c  #00000014
        :pswitch_146  #00000015
        :pswitch_140  #00000016
        :pswitch_136  #00000017
        :pswitch_12c  #00000018
        :pswitch_120  #00000019
        :pswitch_116  #0000001a
        :pswitch_10c  #0000001b
        :pswitch_102  #0000001c
        :pswitch_f6  #0000001d
        :pswitch_ea  #0000001e
        :pswitch_e  #0000001f
        :pswitch_e  #00000020
        :pswitch_e  #00000021
        :pswitch_e  #00000022
        :pswitch_e  #00000023
        :pswitch_e  #00000024
        :pswitch_e  #00000025
        :pswitch_e  #00000026
        :pswitch_e  #00000027
        :pswitch_e  #00000028
        :pswitch_e  #00000029
        :pswitch_e  #0000002a
        :pswitch_e  #0000002b
        :pswitch_e  #0000002c
        :pswitch_e  #0000002d
        :pswitch_e  #0000002e
        :pswitch_e  #0000002f
        :pswitch_e  #00000030
        :pswitch_e  #00000031
        :pswitch_e  #00000032
        :pswitch_e  #00000033
        :pswitch_e  #00000034
        :pswitch_e  #00000035
        :pswitch_e  #00000036
        :pswitch_e  #00000037
        :pswitch_e  #00000038
        :pswitch_e  #00000039
        :pswitch_e  #0000003a
        :pswitch_e  #0000003b
        :pswitch_e  #0000003c
    .end packed-switch
.end method

.method public final yytext()Ljava/lang/String;
    .registers 5

    .line 482
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljxl/biff/formula/Yylex;->zzBuffer:[C

    iget v2, p0, Ljxl/biff/formula/Yylex;->zzStartRead:I

    iget v3, p0, Ljxl/biff/formula/Yylex;->zzMarkedPos:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
