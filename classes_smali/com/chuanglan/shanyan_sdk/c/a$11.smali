.class Lcom/chuanglan/shanyan_sdk/c/a$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a$11;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$11;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$11;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->h(Landroid/content/Context;)V

    return-void
.end method
