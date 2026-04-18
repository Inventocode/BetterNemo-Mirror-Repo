.class public final Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;
.super Ljava/lang/Object;
.source "QRCodeDecodeHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fetchUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 41
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 43
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_f

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    return-object v0

    :catch_f
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private final fetchUrlType(Ljava/lang/String;)I
    .registers 6

    const-string v0, "type"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 30
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32
    :try_start_b
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->fetchUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return p1

    :catch_14
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final checkQRCodeType(Ljava/lang/String;)I
    .registers 6

    const-string v0, "qrCodeStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->INSTANCE:Lcom/codemao/nemo/qrscan/consts/QRCodeConst;

    invoke-virtual {v0}, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->getINNER_QRCODE_HOST()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->fetchUrlType(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_19
    const-string v0, "shequ.codemao.cn"

    .line 23
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 24
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->fetchUrlType(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public final decodeQRCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "qrCodeStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->checkQRCodeType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    const-string v0, "url"

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/qrscan/utils/QRCodeDecodeHelper;->fetchUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    return-object p1
.end method
