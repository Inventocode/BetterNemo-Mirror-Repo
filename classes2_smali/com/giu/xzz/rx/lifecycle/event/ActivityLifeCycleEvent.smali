.class public final enum Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;
.super Ljava/lang/Enum;
.source "ActivityLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum CREATE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum DESTORY:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum PAUSE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum RESTART:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum RESUME:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum START:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

.field public static final enum STOP:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 8
    new-instance v0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->CREATE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 9
    new-instance v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->START:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 10
    new-instance v3, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->RESUME:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 11
    new-instance v5, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v7, "PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->PAUSE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 12
    new-instance v7, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->STOP:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 13
    new-instance v9, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v11, "DESTORY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->DESTORY:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    .line 14
    new-instance v11, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const-string v13, "RESTART"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->RESTART:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 7
    sput-object v13, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->$VALUES:[Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;
    .registers 2

    .line 7
    const-class v0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;
    .registers 1

    .line 7
    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->$VALUES:[Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0}, [Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    return-object v0
.end method
