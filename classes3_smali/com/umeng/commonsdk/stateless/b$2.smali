.class Lcom/umeng/commonsdk/stateless/b$2;
.super Landroid/os/Handler;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/stateless/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/b;Landroid/os/Looper;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b$2;->a:Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x200

    if-eq p1, v0, :cond_16

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 159
    :pswitch_a  #0x113
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->h()V

    goto :goto_16

    .line 155
    :pswitch_e  #0x112
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->g()V

    goto :goto_19

    .line 151
    :pswitch_12  #0x111
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->f()V

    goto :goto_19

    .line 162
    :cond_16
    :goto_16
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->i()V

    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x111
        :pswitch_12  #00000111
        :pswitch_e  #00000112
        :pswitch_a  #00000113
    .end packed-switch
.end method
