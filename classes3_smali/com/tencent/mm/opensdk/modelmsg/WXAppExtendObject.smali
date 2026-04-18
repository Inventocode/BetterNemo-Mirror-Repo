.class public Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000

.field private static final EXTINFO_LENGTH_LIMIT:I = 0x800

.field private static final PATH_LENGTH_LIMIT:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXAppExtendObject"


# instance fields
.field public extInfo:Ljava/lang/String;

.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

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

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.WXAppExtendObject"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

    if-eqz v0, :cond_5b

    array-length v0, v0

    if-nez v0, :cond_1f

    goto :goto_5b

    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x800

    if-le v0, v3, :cond_31

    const-string v0, "checkArgs fail, extInfo is invalid"

    :goto_2d
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_31
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2800

    if-le v0, v3, :cond_40

    const-string v0, "checkArgs fail, filePath is invalid"

    goto :goto_2d

    :cond_40
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    const/high16 v3, 0xa00000

    if-eqz v0, :cond_4f

    invoke-direct {p0, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_4f

    const-string v0, "checkArgs fail, fileSize is too large"

    goto :goto_2d

    :cond_4f
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

    if-eqz v0, :cond_59

    array-length v0, v0

    if-le v0, v3, :cond_59

    const-string v0, "checkArgs fail, fileData is too large"

    goto :goto_2d

    :cond_59
    const/4 v0, 0x1

    return v0

    :cond_5b
    :goto_5b
    const-string v0, "checkArgs fail, all arguments is null"

    goto :goto_2d
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const-string v1, "_wxappextendobject_extInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

    const-string v1, "_wxappextendobject_fileData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    const-string v1, "_wxappextendobject_filePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "_wxappextendobject_extInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const-string v0, "_wxappextendobject_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->fileData:[B

    const-string v0, "_wxappextendobject_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    return-void
.end method
