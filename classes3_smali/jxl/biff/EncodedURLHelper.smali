.class public Ljxl/biff/EncodedURLHelper;
.super Ljava/lang/Object;
.source "EncodedURLHelper.java"


# static fields
.field private static endOfSubdirectory:B

.field private static msDosDriveLetter:B

.field private static parentDirectory:B

.field private static sameDrive:B

.field private static unencodedUrl:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Ljxl/biff/EncodedURLHelper;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    const/4 v0, 0x1

    .line 37
    sput-byte v0, Ljxl/biff/EncodedURLHelper;->msDosDriveLetter:B

    const/4 v0, 0x2

    .line 38
    sput-byte v0, Ljxl/biff/EncodedURLHelper;->sameDrive:B

    const/4 v0, 0x3

    .line 39
    sput-byte v0, Ljxl/biff/EncodedURLHelper;->endOfSubdirectory:B

    const/4 v0, 0x4

    .line 40
    sput-byte v0, Ljxl/biff/EncodedURLHelper;->parentDirectory:B

    const/4 v0, 0x5

    .line 41
    sput-byte v0, Ljxl/biff/EncodedURLHelper;->unencodedUrl:B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .registers 3

    const-string v0, "http:"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    invoke-static {p0, p1}, Ljxl/biff/EncodedURLHelper;->getURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object p0

    return-object p0

    .line 51
    :cond_d
    invoke-static {p0, p1}, Ljxl/biff/EncodedURLHelper;->getFile(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getFile(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .registers 10

    .line 57
    new-instance v0, Ljxl/biff/ByteArray;

    invoke-direct {v0}, Ljxl/biff/ByteArray;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    const/4 v4, 0x0

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_22

    .line 63
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->msDosDriveLetter:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    const/4 v1, 0x2

    goto :goto_34

    .line 67
    :cond_22
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_33

    .line 70
    :cond_2e
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->sameDrive:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    :cond_33
    const/4 v1, 0x0

    .line 74
    :goto_34
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_a6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_42

    goto/16 :goto_a6

    .line 79
    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_a1

    .line 81
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 82
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5a

    if-eq v6, v7, :cond_5a

    .line 89
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_65

    :cond_5a
    if-eq v5, v7, :cond_61

    if-ne v6, v7, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v5, 0x0

    goto :goto_65

    .line 94
    :cond_61
    :goto_61
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_65
    if-ne v5, v7, :cond_70

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_76

    .line 105
    :cond_70
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    :goto_76
    const-string v6, "."

    .line 109
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    goto :goto_94

    :cond_7f
    const-string v6, ".."

    .line 113
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 116
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->parentDirectory:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    goto :goto_94

    .line 121
    :cond_8d
    invoke-static {v1, p1}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add([B)V

    .line 125
    :goto_94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_9f

    .line 127
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->endOfSubdirectory:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    :cond_9f
    move v1, v5

    goto :goto_42

    .line 131
    :cond_a1
    invoke-virtual {v0}, Ljxl/biff/ByteArray;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method private static getURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .registers 4

    .line 136
    new-instance v0, Ljxl/biff/ByteArray;

    invoke-direct {v0}, Ljxl/biff/ByteArray;-><init>()V

    .line 137
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->unencodedUrl:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    .line 139
    invoke-static {p0, p1}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljxl/biff/ByteArray;->add([B)V

    .line 140
    invoke-virtual {v0}, Ljxl/biff/ByteArray;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
