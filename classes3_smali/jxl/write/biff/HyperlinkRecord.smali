.class public Ljxl/write/biff/HyperlinkRecord;
.super Ljxl/biff/WritableRecordData;
.source "HyperlinkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/HyperlinkRecord$LinkType;
    }
.end annotation


# static fields
.field private static final fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;


# instance fields
.field private contents:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private firstColumn:I

.field private firstRow:I

.field private lastColumn:I

.field private lastRow:I

.field private linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private location:Ljava/lang/String;

.field private modified:Z

.field private sheet:Ljxl/write/WritableSheet;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    const-class v0, Ljxl/write/biff/HyperlinkRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 124
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 125
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 126
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 127
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 128
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    return-void
.end method

.method protected constructor <init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .registers 4

    .line 137
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 139
    instance-of v0, p1, Ljxl/read/biff/HyperlinkRecord;

    if-eqz v0, :cond_d

    .line 141
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;->copyReadHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    goto :goto_10

    .line 145
    :cond_d
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;->copyWritableHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    :goto_10
    return-void
.end method

.method private copyReadHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .registers 10

    .line 154
    check-cast p1, Ljxl/read/biff/HyperlinkRecord;

    .line 156
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 157
    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 160
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 161
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 162
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLastRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 163
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLastColumn()I

    move-result v5

    iput v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 164
    new-instance v1, Ljxl/biff/SheetRangeImpl;

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    .line 168
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 170
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isFile()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 172
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 173
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    goto :goto_68

    .line 175
    :cond_47
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isURL()Z

    move-result p2

    if-eqz p2, :cond_58

    .line 177
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 178
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    goto :goto_68

    .line 180
    :cond_58
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isLocation()Z

    move-result p2

    if-eqz p2, :cond_68

    .line 182
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 183
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    :cond_68
    :goto_68
    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method private copyWritableHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .registers 9

    .line 197
    check-cast p1, Ljxl/write/biff/HyperlinkRecord;

    .line 199
    iget v0, p1, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 200
    iget v0, p1, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 201
    iget v0, p1, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 202
    iget v0, p1, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 204
    iget-object v0, p1, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    if-eqz v0, :cond_28

    .line 208
    :try_start_16
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    const/4 v0, 0x0

    .line 213
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 217
    :cond_28
    :goto_28
    iget-object v0, p1, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    if-eqz v0, :cond_39

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 222
    :cond_39
    iget-object v0, p1, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 224
    iget-object p1, p1, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 227
    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 228
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    return-void
.end method

.method private getFileData([B)[B
    .registers 12

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 974
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    :goto_26
    if-eqz v2, :cond_3f

    .line 980
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_26

    .line 988
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_48
    if-eqz v5, :cond_65

    .line 993
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ".."

    .line 994
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    add-int/lit8 v6, v6, 0x1

    .line 997
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 998
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    :goto_62
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 1008
    :cond_65
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1009
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    iget-object v7, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_9b

    .line 1013
    iget-object v7, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x43

    if-eq v7, v9, :cond_9b

    const/16 v9, 0x63

    if-eq v7, v9, :cond_9b

    .line 1016
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1017
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1018
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1019
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1023
    :cond_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_a0
    if-ltz v7, :cond_c1

    .line 1025
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1026
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_be

    const-string v8, "\\"

    .line 1030
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1031
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_be
    add-int/lit8 v7, v7, -0x1

    goto :goto_a0

    .line 1036
    :cond_c1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x18

    .line 1047
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v5, :cond_f0

    .line 1049
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    .line 1053
    :cond_f0
    new-array v2, v2, [B

    .line 1055
    array-length v5, p1

    invoke-static {p1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    array-length p1, p1

    .line 1060
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v5, :cond_116

    .line 1062
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1063
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v7, p1, 0x4

    invoke-static {v5, v2, v7}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1064
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr p1, v5

    :cond_116
    const/4 v5, 0x3

    .line 1070
    aput-byte v5, v2, p1

    add-int/lit8 v7, p1, 0x1

    .line 1071
    aput-byte v5, v2, v7

    add-int/lit8 v7, p1, 0x2

    .line 1072
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x3

    .line 1073
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x4

    .line 1074
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x5

    .line 1075
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x6

    .line 1076
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x7

    .line 1077
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0x8

    const/16 v8, -0x40

    .line 1078
    aput-byte v8, v2, v7

    add-int/lit8 v7, p1, 0x9

    .line 1079
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xa

    .line 1080
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xb

    .line 1081
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xc

    .line 1082
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xd

    .line 1083
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xe

    .line 1084
    aput-byte v4, v2, v7

    add-int/lit8 v7, p1, 0xf

    const/16 v8, 0x46

    .line 1085
    aput-byte v8, v2, v7

    add-int/lit8 p1, p1, 0x10

    .line 1090
    invoke-static {v6, v2, p1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 p1, p1, 0x2

    .line 1094
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 v6, p1, 0x4

    .line 1097
    invoke-static {v1, v2, v6}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 1099
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    const/4 v1, -0x1

    .line 1102
    aput-byte v1, v2, p1

    add-int/lit8 v3, p1, 0x1

    .line 1103
    aput-byte v1, v2, v3

    add-int/lit8 v1, p1, 0x2

    const/16 v3, -0x53

    .line 1104
    aput-byte v3, v2, v1

    add-int/lit8 v1, p1, 0x3

    const/16 v3, -0x22

    .line 1105
    aput-byte v3, v2, v1

    add-int/lit8 v1, p1, 0x4

    .line 1106
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x5

    .line 1107
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x6

    .line 1108
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x7

    .line 1109
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x8

    .line 1110
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x9

    .line 1111
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xa

    .line 1112
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xb

    .line 1113
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xc

    .line 1114
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xd

    .line 1115
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xe

    .line 1116
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0xf

    .line 1117
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x10

    .line 1118
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x11

    .line 1119
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x12

    .line 1120
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x13

    .line 1121
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x14

    .line 1122
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x15

    .line 1123
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x16

    .line 1124
    aput-byte v4, v2, v1

    add-int/lit8 v1, p1, 0x17

    .line 1125
    aput-byte v4, v2, v1

    add-int/lit8 p1, p1, 0x18

    .line 1131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    .line 1132
    invoke-static {v1, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x4

    .line 1137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x4

    .line 1141
    aput-byte v5, v2, p1

    add-int/lit8 v1, p1, 0x1

    .line 1142
    aput-byte v4, v2, v1

    add-int/lit8 p1, p1, 0x2

    .line 1147
    invoke-static {v0, v2, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v2
.end method

.method private getLocationData([B)[B
    .registers 5

    .line 1221
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1222
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1224
    array-length p1, p1

    .line 1227
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1230
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x4

    invoke-static {v1, v0, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private getShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x2e

    .line 1179
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const-string v1, ""

    goto :goto_18

    .line 1191
    :cond_d
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 1192
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object p1, v3

    .line 1195
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_42

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "~"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1198
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_42
    const/4 v3, 0x3

    .line 1201
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_67

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_67
    return-object p1
.end method

.method private getUNCData([B)[B
    .registers 6

    .line 946
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 948
    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 949
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 951
    array-length p1, p1

    .line 954
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 955
    invoke-static {v2, v1, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x4

    .line 958
    invoke-static {v0, v1, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method private getURLData([B)[B
    .registers 7

    .line 889
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    array-length v1, p1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 893
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 895
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 898
    :cond_21
    new-array v1, v1, [B

    .line 900
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    array-length p1, p1

    .line 904
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_4a

    .line 906
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 907
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x4

    invoke-static {v2, v1, v4}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 908
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p1, v2

    :cond_4a
    const/16 v2, -0x20

    .line 912
    aput-byte v2, v1, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v4, -0x37

    .line 913
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x2

    const/16 v4, -0x16

    .line 914
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    const/16 v4, 0x79

    .line 915
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x4

    const/4 v4, -0x7

    .line 916
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x5

    const/16 v4, -0x46

    .line 917
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x6

    const/16 v4, -0x32

    .line 918
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x7

    const/16 v4, 0x11

    .line 919
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x8

    const/16 v4, -0x74

    .line 920
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x9

    const/16 v4, -0x7e

    .line 921
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0xa

    .line 922
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xb

    const/16 v4, -0x56

    .line 923
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0xc

    .line 924
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xd

    const/16 v3, 0x4b

    .line 925
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xe

    const/16 v3, -0x57

    .line 926
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xf

    const/16 v3, 0xb

    .line 927
    aput-byte v3, v1, v2

    .line 930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p1, 0x10

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x14

    .line 933
    invoke-static {v0, v1, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v1
.end method


# virtual methods
.method public getData()[B
    .registers 9

    .line 444
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-nez v0, :cond_7

    .line 446
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v0

    :cond_7
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 453
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 454
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 455
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 456
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    const/4 v4, 0x6

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, -0x30

    const/16 v4, 0x8

    aput-byte v1, v0, v4

    const/16 v1, 0x9

    const/16 v5, -0x37

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    const/16 v5, -0x16

    aput-byte v5, v0, v1

    const/16 v1, 0x79

    const/16 v5, 0xb

    aput-byte v1, v0, v5

    const/16 v1, 0xc

    const/4 v6, -0x7

    aput-byte v6, v0, v1

    const/16 v1, 0xd

    const/16 v6, -0x46

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    const/16 v6, -0x32

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    const/16 v6, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v7, -0x74

    aput-byte v7, v0, v1

    const/16 v1, -0x7e

    aput-byte v1, v0, v6

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v6, -0x56

    aput-byte v6, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v6, 0x15

    aput-byte v1, v0, v6

    const/16 v1, 0x16

    const/16 v7, -0x57

    aput-byte v7, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v5, 0x18

    aput-byte v3, v0, v5

    const/16 v3, 0x19

    aput-byte v2, v0, v3

    const/16 v3, 0x1a

    aput-byte v2, v0, v3

    const/16 v3, 0x1b

    aput-byte v2, v0, v3

    .line 483
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v3

    if-eqz v3, :cond_98

    const/4 v2, 0x3

    .line 487
    iget-object v3, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v3, :cond_b7

    const/16 v2, 0x17

    goto :goto_b7

    .line 492
    :cond_98
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v2, 0x1

    .line 496
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v1, :cond_b7

    const/16 v2, 0x15

    goto :goto_b7

    .line 501
    :cond_a6
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_af

    const/16 v2, 0x8

    goto :goto_b7

    .line 505
    :cond_af
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_b7

    const/16 v2, 0x103

    :cond_b7
    :goto_b7
    const/16 v1, 0x1c

    .line 510
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 512
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 514
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getURLData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_ef

    .line 516
    :cond_c9
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 518
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getFileData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_ef

    .line 520
    :cond_d6
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 522
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getLocationData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_ef

    .line 524
    :cond_e3
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 526
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getUNCData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 529
    :cond_ef
    :goto_ef
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v0
.end method

.method public isFile()Z
    .registers 3

    .line 344
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLocation()Z
    .registers 3

    .line 374
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUNC()Z
    .registers 3

    .line 354
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isURL()Z
    .registers 3

    .line 364
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 539
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 541
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_d
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 545
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_1a
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 549
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const-string v0, ""

    return-object v0
.end method
