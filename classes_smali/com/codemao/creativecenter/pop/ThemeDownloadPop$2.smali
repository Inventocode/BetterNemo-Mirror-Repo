.class Lcom/codemao/creativecenter/pop/ThemeDownloadPop$2;
.super Ljava/lang/Object;
.source "ThemeDownloadPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 60
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->dismiss()V

    return-void
.end method
