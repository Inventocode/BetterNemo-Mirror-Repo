.class public final enum Lcom/giu/xzz/rx/bus/mode/ThreadMode;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giu/xzz/rx/bus/mode/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/giu/xzz/rx/bus/mode/ThreadMode;

.field public static final enum CURRENT_THREAD:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

.field public static final enum IO:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

.field public static final enum MAIN:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

.field public static final enum NEW_THREAD:Lcom/giu/xzz/rx/bus/mode/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 12
    new-instance v0, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    const-string v1, "CURRENT_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/rx/bus/mode/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->CURRENT_THREAD:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    .line 17
    new-instance v1, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    const-string v3, "MAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/giu/xzz/rx/bus/mode/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->MAIN:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    .line 22
    new-instance v3, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    const-string v5, "NEW_THREAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/giu/xzz/rx/bus/mode/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->NEW_THREAD:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    .line 27
    new-instance v5, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    const-string v7, "IO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/giu/xzz/rx/bus/mode/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->IO:Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->$VALUES:[Lcom/giu/xzz/rx/bus/mode/ThreadMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/giu/xzz/rx/bus/mode/ThreadMode;
    .registers 2

    .line 7
    const-class v0, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    return-object p0
.end method

.method public static values()[Lcom/giu/xzz/rx/bus/mode/ThreadMode;
    .registers 1

    .line 7
    sget-object v0, Lcom/giu/xzz/rx/bus/mode/ThreadMode;->$VALUES:[Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    invoke-virtual {v0}, [Lcom/giu/xzz/rx/bus/mode/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giu/xzz/rx/bus/mode/ThreadMode;

    return-object v0
.end method
