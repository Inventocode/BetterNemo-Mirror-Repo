.class public final Lcom/codemao/nemo/util/WebWhiteListUtils;
.super Ljava/lang/Object;
.source "WebWhiteListUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebWhiteListUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebWhiteListUtils.kt\ncom/codemao/nemo/util/WebWhiteListUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,67:1\n731#2,9:68\n37#3,2:77\n*S KotlinDebug\n*F\n+ 1 WebWhiteListUtils.kt\ncom/codemao/nemo/util/WebWhiteListUtils\n*L\n53#1:68,9\n54#1:77,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

.field private static final whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/codemao/nemo/util/WebWhiteListUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/WebWhiteListUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    const-string v0, "codemao"

    const-string v1, "feishu"

    const-string v2, "shimo"

    const-string v3, "dao3"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/WebWhiteListUtils;->whiteList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final inWhiteList(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 51
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v1, "host"

    .line 53
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\."

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 731
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 733
    :cond_29
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 734
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    if-nez v3, :cond_29

    .line 735
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_4e

    .line 739
    :cond_4a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_4e
    new-array v1, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 54
    check-cast p1, [Ljava/lang/String;

    .line 56
    array-length v1, p1

    if-le v1, v2, :cond_5f

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-object p1, p1, v1

    goto :goto_61

    :cond_5f
    aget-object p1, p1, v0

    :goto_61
    const-string v1, "web白名单"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "解析出的域名:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/codemao/nemo/util/WebWhiteListUtils;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_82
    return v0
.end method


# virtual methods
.method public final loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "原始url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web白名单"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 31
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2b
    const/4 p1, 0x1

    return p1
.end method

.method public final loadUrl(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "原始url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web白名单"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-direct {p0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 21
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2b
    const/4 p1, 0x1

    return p1
.end method

.method public final loadUrl(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "原始url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web白名单"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 41
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2b
    const/4 p1, 0x1

    return p1
.end method
