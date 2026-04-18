.class public final Lcom/codemao/nemo/qrscan/consts/QRCodeConst;
.super Ljava/lang/Object;
.source "QRCodeConst.kt"


# static fields
.field private static final BEFORE_QRCODE_HOST:Ljava/lang/String;

.field private static final INNER_QRCODE_HOST:Ljava/lang/String;

.field public static final INSTANCE:Lcom/codemao/nemo/qrscan/consts/QRCodeConst;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->INSTANCE:Lcom/codemao/nemo/qrscan/consts/QRCodeConst;

    .line 33
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7119e7c5

    if-eq v1, v2, :cond_3b

    const v2, 0x18415

    if-eq v1, v2, :cond_2f

    const v2, 0x364492

    if-eq v1, v2, :cond_23

    goto :goto_47

    :cond_23
    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_47

    :cond_2c
    const-string v0, "https://test-nemo.codemao.cn/qrcode"

    goto :goto_49

    :cond_2f
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_47

    :cond_38
    const-string v0, "https://dev-nemo.codemao.cn/qrcode"

    goto :goto_49

    :cond_3b
    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_47

    :cond_44
    const-string v0, "https://staging-nemo.codemao.cn/qrcode"

    goto :goto_49

    :cond_47
    :goto_47
    const-string v0, "https://nemo.codemao.cn/qrcode"

    :goto_49
    sput-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->INNER_QRCODE_HOST:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "/"

    move-object v1, v0

    .line 51
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->BEFORE_QRCODE_HOST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBEFORE_QRCODE_HOST()Ljava/lang/String;
    .registers 2

    .line 51
    sget-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->BEFORE_QRCODE_HOST:Ljava/lang/String;

    return-object v0
.end method

.method public final getINNER_QRCODE_HOST()Ljava/lang/String;
    .registers 2

    .line 33
    sget-object v0, Lcom/codemao/nemo/qrscan/consts/QRCodeConst;->INNER_QRCODE_HOST:Ljava/lang/String;

    return-object v0
.end method
