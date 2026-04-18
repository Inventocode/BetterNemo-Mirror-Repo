.class public Lcom/codemao/nemo/view/CmEditText;
.super Landroid/widget/EditText;
.source "CmEditText.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CmEditText$InnerInputConnecttion;
    }
.end annotation


# static fields
.field public static ccc:Ljava/lang/String; = "[\\u4e00-\\u9fa5A-Za-z0-9]*"


# instance fields
.field filter:Ljava/lang/String;

.field private hasFiter:Z

.field private needIntercept:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object p1, Lcom/codemao/nemo/view/CmEditText;->ccc:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmEditText;->filter:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->hasFiter:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->needIntercept:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object p1, Lcom/codemao/nemo/view/CmEditText;->ccc:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmEditText;->filter:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->hasFiter:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->needIntercept:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CmEditText;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/codemao/nemo/view/CmEditText;->hasFiter:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CmEditText;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/codemao/nemo/view/CmEditText;->needIntercept:Z

    return p0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 71
    new-instance v0, Lcom/codemao/nemo/view/CmEditText$InnerInputConnecttion;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/codemao/nemo/view/CmEditText$InnerInputConnecttion;-><init>(Lcom/codemao/nemo/view/CmEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/nemo/view/CmEditText;->filter:Ljava/lang/String;

    return-void
.end method

.method public setHasFiter(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->hasFiter:Z

    return-void
.end method

.method public setNeedIntercept(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmEditText;->needIntercept:Z

    return-void
.end method
