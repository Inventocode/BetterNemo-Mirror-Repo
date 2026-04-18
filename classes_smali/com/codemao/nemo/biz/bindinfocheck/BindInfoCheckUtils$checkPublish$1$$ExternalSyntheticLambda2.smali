.class public final synthetic Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$0:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$2:Z

    iput-boolean p4, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$0:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$2:Z

    iget-boolean v3, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$r8$lambda$F9vPRbz4p_S8aiF75SFKUCzYRLU(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V

    return-void
.end method
