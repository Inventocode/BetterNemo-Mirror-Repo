.class public Lcom/codemao/utils/util/CuMessengerUtils;
.super Ljava/lang/Object;
.source "CuMessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/utils/util/CuMessengerUtils$MessageCallback;,
        Lcom/codemao/utils/util/CuMessengerUtils$ServerService;
    }
.end annotation


# static fields
.field private static subscribers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/utils/util/CuMessengerUtils$MessageCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/codemao/utils/util/CuMessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 36
    sget-object v0, Lcom/codemao/utils/util/CuMessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
