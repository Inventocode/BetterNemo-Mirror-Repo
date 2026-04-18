.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;-><init>()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getMBinding(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;->titleIconUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
