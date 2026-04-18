.class public Lcom/codemao/nemo/dialog/ReusableDialog;
.super Landroid/app/Dialog;
.source "ReusableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;,
        Lcom/codemao/nemo/dialog/ReusableDialog$Builder;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private noBtn:Landroid/widget/TextView;

.field private okBtn:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)V
    .registers 8

    .line 34
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$000(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$100(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$100(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v1

    :goto_12
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mViews:Landroid/util/SparseArray;

    .line 35
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$000(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$200(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    .line 37
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$300(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mCallBack:Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    .line 39
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$400(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_53

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$400(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->okBtn:Landroid/widget/TextView;

    .line 41
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$500(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->okBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/ReusableDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/ReusableDialog$1;-><init>(Lcom/codemao/nemo/dialog/ReusableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_53
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$800(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v0

    if-eqz v0, :cond_78

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$800(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->noBtn:Landroid/widget/TextView;

    .line 54
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$900(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->noBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/ReusableDialog$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/ReusableDialog$2;-><init>(Lcom/codemao/nemo/dialog/ReusableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_78
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/dialog/ReusableDialog;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 72
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1000(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 73
    iget-object v4, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1100(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)Z

    move-result v4

    if-eqz v4, :cond_bd

    const/16 v4, 0xc00

    .line 82
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_de

    :cond_bd
    const/16 v4, 0xe06

    .line 87
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_de

    :cond_c2
    const/4 v4, -0x2

    .line 93
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1200(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v4

    if-eq v4, v2, :cond_d9

    .line 97
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1200(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v4, 0x30

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    goto :goto_de

    :cond_d9
    const/16 v4, 0x11

    .line 100
    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 105
    :goto_de
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1300(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result v1

    if-eq v1, v2, :cond_fc

    .line 110
    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->access$1300(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_fc
    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;Lcom/codemao/nemo/dialog/ReusableDialog$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ReusableDialog;-><init>(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/dialog/ReusableDialog;)Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mCallBack:Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/dialog/ReusableDialog;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public setContentView(I)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    .line 130
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mContentView:Landroid/view/View;

    .line 122
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .registers 3

    .line 157
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
