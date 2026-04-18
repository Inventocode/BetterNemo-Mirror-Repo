.class Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$2;
.super Ljava/lang/Object;
.source "CreateBlockActorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->access$102(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Z)Z

    return-void
.end method
