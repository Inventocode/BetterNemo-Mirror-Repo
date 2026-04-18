.class public final Lcom/codemao/nemo/qrscan/utils/QQShareHelper;
.super Ljava/lang/Object;
.source "QQShareHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/qrscan/utils/QQShareHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QQShareHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isQQInstalled(Landroid/content/Context;Lcom/tencent/tauth/Tencent;)Z
    .registers 4

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTencent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final shareImg(Landroid/app/Activity;Lcom/tencent/tauth/Tencent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTencent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "imageLocalUrl"

    .line 35
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "req_type"

    const/4 v1, 0x5

    .line 36
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public final shareImgToQQZone(Landroid/app/Activity;Lcom/tencent/tauth/Tencent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTencent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "req_type"

    const/4 v2, 0x3

    .line 47
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "imageUrl"

    .line 48
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
