.class public Lcom/bun/miitmdid/provider/BaseProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/BaseProvider;->startAction(Lcom/bun/miitmdid/interfaces/IIdentifierListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/BaseProvider;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/BaseProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/provider/BaseProvider$1;->this$0:Lcom/bun/miitmdid/provider/BaseProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bun/miitmdid/provider/BaseProvider$1;->this$0:Lcom/bun/miitmdid/provider/BaseProvider;

    invoke-virtual {v0}, Lcom/bun/miitmdid/provider/BaseProvider;->doStart()V

    return-void
.end method
