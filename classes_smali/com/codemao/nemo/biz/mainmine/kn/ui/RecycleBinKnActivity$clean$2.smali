.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;-><init>()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$isPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMBinding(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;

    move-result-object v0

    :goto_15
    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityKnRecycleBinBinding;->clean:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$clean$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
