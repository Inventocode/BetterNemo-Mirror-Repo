.class Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver$NavigationBarObserverInstance;
.super Ljava/lang/Object;
.source "NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationBarObserverInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 108
    new-instance v0, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;-><init>(Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver$1;)V

    sput-object v0, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver$NavigationBarObserverInstance;->INSTANCE:Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    return-void
.end method

.method static synthetic access$000()Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;
    .registers 1

    .line 107
    sget-object v0, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver$NavigationBarObserverInstance;->INSTANCE:Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    return-object v0
.end method
