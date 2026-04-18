.class Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 180
    const-class p1, Lcom/codemao/nemo/activity/CoverEditActivity;

    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_94

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$100(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;Ljava/lang/String;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v3}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3a

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {p1, v1, v0}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_94

    .line 185
    :cond_3a
    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v3}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_4a

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {p1, v1, v0, v2}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->start(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_94

    .line 187
    :cond_4a
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v2}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)I

    move-result v2

    const/4 v3, 0x5

    const-string v4, "degree"

    const-string v5, "imagePath"

    if-ne v2, v3, :cond_6a

    .line 188
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_94

    .line 192
    :cond_6a
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {v2}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8b

    .line 193
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-direct {v2, v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "type"

    .line 194
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_94

    .line 199
    :cond_8b
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorActivity$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorActivity;Ljava/util/ArrayList;)V

    :cond_94
    :goto_94
    return-void
.end method
