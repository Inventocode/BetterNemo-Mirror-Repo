.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;
.super Ljava/lang/Object;
.source "WorkPublishUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkPublishUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkPublishUtils.kt\ncom/codemao/nemo/biz/workpublish/WorkPublishUtils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,32:1\n107#2:33\n79#2,22:34\n107#2:56\n79#2,22:57\n*S KotlinDebug\n*F\n+ 1 WorkPublishUtils.kt\ncom/codemao/nemo/biz/workpublish/WorkPublishUtils\n*L\n17#1:33\n17#1:34,22\n29#1:56\n29#1:57,22\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;->INSTANCE:Lcom/codemao/nemo/biz/workpublish/WorkPublishUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final publishCheckPass(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 14
    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return v1

    .line 17
    :cond_15
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-gt v4, v2, :cond_4a

    if-nez v5, :cond_2b

    move v6, v4

    goto :goto_2c

    :cond_2b
    move v6, v2

    .line 85
    :goto_2c
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 17
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    :goto_3b
    if-nez v5, :cond_44

    if-nez v6, :cond_41

    const/4 v5, 0x1

    goto :goto_25

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_44
    if-nez v6, :cond_47

    goto :goto_4a

    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :cond_4a
    :goto_4a
    add-int/2addr v2, v3

    .line 100
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p2, "作品名不能为空"

    .line 18
    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v1

    .line 21
    :cond_60
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/nemo/util/StringUtil;->isWorkName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_75

    const-string/jumbo p2, "作品名称包含不支持的字符，请更改后再试一次"

    .line 22
    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v1

    :cond_75
    return v3
.end method
