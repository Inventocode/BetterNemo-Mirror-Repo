.class final Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;
    .registers 1

    .line 32
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;

    return-object v0
.end method
