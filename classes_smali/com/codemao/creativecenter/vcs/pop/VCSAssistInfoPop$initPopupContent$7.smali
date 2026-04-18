.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVCSAssistInfoPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VCSAssistInfoPop.kt\ncom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7\n*L\n1#1,736:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;Z)V
    .registers 4

    .line 200
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    .line 201
    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Z

    move-result v0

    if-ne v0, p2, :cond_9

    goto :goto_f

    .line 204
    :cond_9
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 205
    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$toggleAssistMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    :goto_f
    return-void
.end method
