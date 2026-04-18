.class public Lcom/codemao/utils/util/CuMessengerUtils$ServerService;
.super Landroid/app/Service;
.source "CuMessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/utils/util/CuMessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerService"
.end annotation


# instance fields
.field private final mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiveClientMsgHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 266
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 268
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 270
    new-instance v0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;

    invoke-direct {v0, p0}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;-><init>(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;)V

    iput-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    .line 291
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    .line 266
    invoke-direct {p0, p1}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    .line 266
    invoke-direct {p0, p1}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    return-void
.end method

.method private consumeServerProcessCallback(Landroid/os/Message;)V
    .registers 4

    .line 335
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1d

    const-string v0, "MESSENGER_UTILS"

    .line 337
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 339
    invoke-static {}, Lcom/codemao/utils/util/CuMessengerUtils;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/utils/util/CuMessengerUtils$MessageCallback;

    if-eqz v0, :cond_1d

    .line 341
    invoke-interface {v0, p1}, Lcom/codemao/utils/util/CuMessengerUtils$MessageCallback;->messageCall(Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method private sendMsg2Client(Landroid/os/Message;)V
    .registers 5

    .line 321
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_e

    .line 325
    :try_start_1c
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    goto :goto_e

    :catch_24
    move-exception v1

    .line 328
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 331
    :cond_29
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 296
    iget-object p1, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 301
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_11

    .line 302
    sget-object p2, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;->DEFAULT_CHANNEL_CONFIG:Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/codemao/utils/util/CuBridgeUtils;->getNotification(Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;Lcom/codemao/utils/util/CuUtils$Consumer;)Landroid/app/Notification;

    move-result-object p2

    const/4 p3, 0x1

    .line 305
    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_11
    const/4 p2, 0x2

    if-eqz p1, :cond_2d

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 310
    iget-object p3, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    invoke-static {p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p3

    .line 311
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    iput-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 312
    invoke-virtual {p3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 313
    invoke-direct {p0, p3}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    .line 314
    invoke-direct {p0, p3}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    :cond_2d
    return p2
.end method
