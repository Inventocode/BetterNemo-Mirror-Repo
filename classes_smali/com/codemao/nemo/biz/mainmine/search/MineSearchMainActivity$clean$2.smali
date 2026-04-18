.class final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineSearchMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$isPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getMBinding(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;

    move-result-object v0

    :goto_15
    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;->clean:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
