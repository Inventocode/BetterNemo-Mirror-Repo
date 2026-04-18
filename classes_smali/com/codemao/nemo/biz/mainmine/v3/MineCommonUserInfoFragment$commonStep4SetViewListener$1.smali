.class final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineCommonUserInfoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->commonStep4SetViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 74
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "我的-点击立刻登录"

    .line 75
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method
