.class public final enum Lcom/geetest/sdk/an$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/sdk/an$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NORMAL:Lcom/geetest/sdk/an$a;

.field public static final enum ONEPASS:Lcom/geetest/sdk/an$a;

.field public static final enum REQUESTING:Lcom/geetest/sdk/an$a;

.field public static final enum SHUTDOWN:Lcom/geetest/sdk/an$a;

.field private static final synthetic a:[Lcom/geetest/sdk/an$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/geetest/sdk/an$a;

    const-string v1, "SHUTDOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geetest/sdk/an$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/an$a;->SHUTDOWN:Lcom/geetest/sdk/an$a;

    .line 5
    new-instance v1, Lcom/geetest/sdk/an$a;

    const-string v3, "ONEPASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geetest/sdk/an$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geetest/sdk/an$a;->ONEPASS:Lcom/geetest/sdk/an$a;

    .line 9
    new-instance v3, Lcom/geetest/sdk/an$a;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geetest/sdk/an$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geetest/sdk/an$a;->NORMAL:Lcom/geetest/sdk/an$a;

    .line 13
    new-instance v5, Lcom/geetest/sdk/an$a;

    const-string v7, "REQUESTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geetest/sdk/an$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geetest/sdk/an$a;->REQUESTING:Lcom/geetest/sdk/an$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/geetest/sdk/an$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/geetest/sdk/an$a;->a:[Lcom/geetest/sdk/an$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/sdk/an$a;
    .registers 2

    .line 1
    const-class v0, Lcom/geetest/sdk/an$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/sdk/an$a;

    return-object p0
.end method

.method public static values()[Lcom/geetest/sdk/an$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/an$a;->a:[Lcom/geetest/sdk/an$a;

    invoke-virtual {v0}, [Lcom/geetest/sdk/an$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/sdk/an$a;

    return-object v0
.end method
