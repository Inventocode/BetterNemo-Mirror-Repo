.class public final enum Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "CreativeHttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 235
    new-instance v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->NONE:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    .line 236
    new-instance v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const-string v3, "BASIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->BASIC:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    .line 237
    new-instance v3, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const-string v5, "HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->HEADERS:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    .line 238
    new-instance v5, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const-string v7, "BODY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->BODY:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 234
    sput-object v7, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->$VALUES:[Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;
    .registers 2

    .line 234
    const-class v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;
    .registers 1

    .line 234
    sget-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->$VALUES:[Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    return-object v0
.end method
