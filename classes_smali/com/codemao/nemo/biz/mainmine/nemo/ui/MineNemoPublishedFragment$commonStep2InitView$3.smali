.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoPublishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 116
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;->invoke(Landroid/view/View;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    const-string v0, "holderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loading"

    .line 117
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    const p2, 0x7f0a0350

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_24

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 120
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_24
    return-void
.end method
