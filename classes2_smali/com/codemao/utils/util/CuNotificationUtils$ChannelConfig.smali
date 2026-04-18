.class public Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;
.super Ljava/lang/Object;
.source "CuNotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/utils/util/CuNotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelConfig"
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_CONFIG:Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;


# instance fields
.field private mNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 175
    new-instance v0, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;

    .line 176
    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sput-object v0, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;->DEFAULT_CHANNEL_CONFIG:Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    .line 183
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    :cond_10
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;)Landroid/app/NotificationChannel;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method


# virtual methods
.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method
