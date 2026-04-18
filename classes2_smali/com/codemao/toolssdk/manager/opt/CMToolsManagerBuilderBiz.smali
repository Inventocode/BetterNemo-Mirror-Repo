.class public Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;
.super Ljava/lang/Object;
.source "CMToolsManagerBuilderBiz.kt"


# instance fields
.field private enterForm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnterFrom()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;->enterForm:Ljava/lang/String;

    return-object v0
.end method

.method protected final setEnterFromType(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;->enterForm:Ljava/lang/String;

    return-void
.end method
