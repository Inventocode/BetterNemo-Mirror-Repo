.class final Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;
.super Ljava/lang/Object;
.source "VSCAssistInfoAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 80
    sget-object p1, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->getMVersionAdapter()Lcom/codemao/creativecenter/utils/share/IVersionAdapter;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/share/IVersionAdapter;->onBcmNeedUpdate()V

    :cond_b
    return-void
.end method
