.class public Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final CONTENT_LENGTH_LIMIT:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXEmojiObject"


# instance fields
.field public emojiData:[B

.field public emojiPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

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

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.WXEmojiObject"

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_15

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_33

    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    const/high16 v3, 0xa00000

    if-eqz v0, :cond_24

    array-length v0, v0

    if-le v0, v3, :cond_24

    const-string v0, "checkArgs fail, emojiData is too large"

    :goto_20
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_24
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-direct {p0, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->getFileSize(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_31

    const-string v0, "checkArgs fail, emojiSize is too large"

    goto :goto_20

    :cond_31
    const/4 v0, 0x1

    return v0

    :cond_33
    :goto_33
    const-string v0, "checkArgs fail, both arguments is null"

    goto :goto_20
.end method

.method public serialize(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    const-string v1, "_wxemojiobject_emojiData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    const-string v1, "_wxemojiobject_emojiPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmojiData([B)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    return-void
.end method

.method public setEmojiPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "_wxemojiobject_emojiData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiData:[B

    const-string v0, "_wxemojiobject_emojiPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method
