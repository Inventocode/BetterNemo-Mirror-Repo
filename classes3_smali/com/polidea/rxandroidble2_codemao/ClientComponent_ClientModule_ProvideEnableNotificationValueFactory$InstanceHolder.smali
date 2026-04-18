.class final Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideEnableNotificationValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;
    .registers 1

    .line 31
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    return-object v0
.end method
