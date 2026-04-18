.class final Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainNewWorkActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/viewpager2/widget/ViewPager2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$isPad(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getMBindingPad(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->access$getMBinding(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;

    move-result-object v0

    :goto_15
    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityMainNewWorkBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$viewPager$2;->invoke()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    return-object v0
.end method
