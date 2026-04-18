.class public Lcom/codemao/nemo/view/ShareMiaoCodeDialog;
.super Landroid/app/Dialog;
.source "ShareMiaoCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;
    }
.end annotation


# instance fields
.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field rvShareMiaoCode:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shareMiaoCodeCallback:Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const p2, 0x7f130343

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->shareMiaoCodeCallback:Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 72
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 75
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 76
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 77
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->shareMiaoCodeCallback:Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;

    if-eqz v0, :cond_46

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->rvShareMiaoCode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;-><init>(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_46
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$2;-><init>(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->init()V

    return-void
.end method

.method public setData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method public setShareMiaoCodeCallback(Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->shareMiaoCodeCallback:Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;

    return-object p0
.end method
