.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep3ObserveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 117
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$setAdvancedIndex$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;I)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "标题的位置:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getAdvancedIndex$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "滑动"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
