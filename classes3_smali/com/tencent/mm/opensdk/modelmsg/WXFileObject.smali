.class public Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXFileObject"


# instance fields
.field private contentLengthLimit:I

.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .registers 2

    invoke-static {p1}, Lcom/tencent/mm/opensdk/utils/d;->getFileSize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkArgs()Z
    .registers 5

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.WXFileObject"

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_15

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_35

    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    if-eqz v0, :cond_24

    array-length v0, v0

    iget v3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    if-le v0, v3, :cond_24

    const-string v0, "checkArgs fail, fileData is too large"

    :goto_20
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_24
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-direct {p0, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    if-le v0, v3, :cond_33

    const-string v0, "checkArgs fail, fileSize is too large"

    goto :goto_20

    :cond_33
    const/4 v0, 0x1

    return v0

    :cond_35
    :goto_35
    const-string v0, "checkArgs fail, both arguments is null"

    goto :goto_20
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    const-string v1, "_wxfileobject_fileData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    const-string v1, "_wxfileobject_filePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLengthLimit(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->contentLengthLimit:I

    return-void
.end method

.method public setFileData([B)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "_wxfileobject_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    const-string v0, "_wxfileobject_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method
