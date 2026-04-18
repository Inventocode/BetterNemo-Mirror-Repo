.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;
.super Ljava/lang/Object;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onDeleteForever(Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

.field final synthetic $dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method public static synthetic $r8$lambda$aFkozco58TzD1abvXiDQTMO1bjc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->onClick$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/ljwx/basedialog/dialog/CustomDialog;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->$dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onClick$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->$dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1;->$data:Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    const-string/jumbo p1, "正在删除..."

    .line 230
    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$showLoading(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getWork_id()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_30

    :cond_2e
    const-wide/16 v1, -0x1

    :goto_30
    invoke-virtual {p1, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->deleteWorkForever(J)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 232
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1$onClick$1$1;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1$onClick$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onDeleteForever$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_41
    return-void
.end method
