.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;
.super Ljava/lang/Object;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->onClean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method public static synthetic $r8$lambda$Qx4sbr4F83s_ReJ0FtpccsH9kYE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->onClick$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/ljwx/basedialog/dialog/CustomDialog;Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->$dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onClick$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->$dialog:Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const-string/jumbo v0, "正在清空..."

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$showLoading(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->cleanWork()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
