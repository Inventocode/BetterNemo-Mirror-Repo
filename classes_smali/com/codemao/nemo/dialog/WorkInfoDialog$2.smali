.class Lcom/codemao/nemo/dialog/WorkInfoDialog$2;
.super Ljava/lang/Object;
.source "WorkInfoDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkInfoDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 141
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->isWorkName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, ""

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method
