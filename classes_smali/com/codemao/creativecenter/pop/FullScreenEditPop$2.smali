.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$2;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 221
    sget-object p2, Lcom/codemao/creativecenter/customview/CmEditText;->bbb:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p1, ""

    :cond_a
    return-object p1
.end method
