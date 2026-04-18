.class public final Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$Builder;,
        Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    }
.end annotation


# static fields
.field public static final ACTION_WXAPPMESSAGE:Ljava/lang/String; = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE"

.field public static final DESCRIPTION_LENGTH_LIMIT:I = 0x400

.field public static final MEDIA_TAG_NAME_LENGTH_LIMIT:I = 0x40

.field public static final MESSAGE_ACTION_LENGTH_LIMIT:I = 0x800

.field public static final MESSAGE_EXT_LENGTH_LIMIT:I = 0x800

.field public static final MINI_PROGRAM__THUMB_LENGHT:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXMediaMessage"

.field public static final THUMB_LENGTH_LIMIT:I = 0x10000

.field public static final TITLE_LENGTH_LIMIT:I = 0x200


# instance fields
.field public description:Ljava/lang/String;

.field public mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

.field public mediaTagName:Ljava/lang/String;

.field public messageAction:Ljava/lang/String;

.field public messageExt:Ljava/lang/String;

.field public sdkVer:I

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.WXMediaMessage"

    const/16 v3, 0x8

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_12

    array-length v0, v0

    if-nez v0, :cond_18

    :cond_12
    const-string v0, "checkArgs fail, thumbData should not be null when send emoji"

    :goto_14
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_18
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/opensdk/utils/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_2b

    array-length v0, v0

    const/high16 v3, 0x20000

    if-le v0, v3, :cond_2e

    :cond_2b
    const-string v0, "checkArgs fail, thumbData should not be null or exceed 128kb"

    goto :goto_14

    :cond_2e
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/opensdk/utils/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_44

    array-length v0, v0

    const/high16 v3, 0x10000

    if-le v0, v3, :cond_44

    const-string v0, "checkArgs fail, thumbData is invalid"

    goto :goto_14

    :cond_44
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x200

    if-le v0, v3, :cond_53

    const-string v0, "checkArgs fail, title is invalid"

    goto :goto_14

    :cond_53
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_62

    const-string v0, "checkArgs fail, description is invalid"

    goto :goto_14

    :cond_62
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    if-nez v0, :cond_69

    const-string v0, "checkArgs fail, mediaObject is null"

    goto :goto_14

    :cond_69
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-le v0, v3, :cond_78

    const-string v0, "checkArgs fail, mediaTagName is too long"

    goto :goto_14

    :cond_78
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageAction:Ljava/lang/String;

    const/16 v3, 0x800

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_87

    const-string v0, "checkArgs fail, messageAction is too long"

    goto :goto_14

    :cond_87
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_94

    const-string v0, "checkArgs fail, messageExt is too long"

    goto :goto_14

    :cond_94
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;->checkArgs()Z

    move-result v0

    return v0
.end method

.method public final getType()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;->type()I

    move-result v0

    return v0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setThumbImage exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicroMsg.SDK.WXMediaMessage"

    invoke-static {v0, p1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
