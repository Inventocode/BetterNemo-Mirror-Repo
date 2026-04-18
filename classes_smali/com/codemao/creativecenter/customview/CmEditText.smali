.class public Lcom/codemao/creativecenter/customview/CmEditText;
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
        Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;
    }
.end annotation


# static fields
.field public static bbb:Ljava/lang/String; = "[\\u0020\\u0028\\u0029\\uff08\\uff09\\u002d\\u005f\\u4e00-\\u9fa5A-Za-z0-9]*"

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
    sget-object p1, Lcom/codemao/creativecenter/customview/CmEditText;->ccc:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->filter:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->hasFiter:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->needIntercept:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object p1, Lcom/codemao/creativecenter/customview/CmEditText;->ccc:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->filter:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->hasFiter:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->needIntercept:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmEditText;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/CmEditText;->hasFiter:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmEditText;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/CmEditText;->needIntercept:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmEditText;)I
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmEditText;->getSelectionLength()I

    move-result p0

    return p0
.end method

.method private getSelectionLength()I
    .registers 5

    const/4 v0, 0x0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1d

    if-gez v1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :catch_1d
    :goto_1d
    return v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 71
    new-instance v0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;-><init>(Lcom/codemao/creativecenter/customview/CmEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->filter:Ljava/lang/String;

    return-void
.end method

.method public setHasFiter(Z)V
    .registers 2

    .line 152
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->hasFiter:Z

    return-void
.end method

.method public setNeedIntercept(Z)V
    .registers 2

    .line 144
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmEditText;->needIntercept:Z

    return-void
.end method
