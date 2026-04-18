.class public Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/basedialog/dialog/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTheme:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mContext:Landroid/content/Context;

    .line 292
    iput p2, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 4

    .line 301
    new-instance v0, Lcom/ljwx/basedialog/dialog/CustomDialog;

    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 302
    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setView(Landroid/view/View;)Lcom/ljwx/basedialog/dialog/CustomDialog;

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->mView:Landroid/view/View;

    return-object p0
.end method

.method public show()Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 2

    .line 307
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;->create()Lcom/ljwx/basedialog/dialog/CustomDialog;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
