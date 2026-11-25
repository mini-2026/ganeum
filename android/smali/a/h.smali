.class public final synthetic La/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, La/h;->a:I

    iput-object p1, p0, La/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, La/h;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, La/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ganeum/calc/MainActivity;

    sget-object v3, Lcom/ganeum/calc/MainActivity;->h:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v3, ""

    const-string v4, "window.onLatestFail&&window.onLatestFail()"

    :try_start_0
    const-string v5, "https://api.github.com/repos/dlsdml99-create/ganeum/releases/latest"

    invoke-static {v5}, Lcom/ganeum/calc/MainActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "tag_name"

    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "[^0-9]"

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v3, "assets"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "browser_download_url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, ".apk"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "https://github.com/dlsdml99-create/ganeum/releases/download/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iput-wide v7, v2, Lcom/ganeum/calc/MainActivity;->d:J

    iput-object v6, v2, Lcom/ganeum/calc/MainActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.onLatest&&window.onLatest("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ganeum/calc/MainActivity;->b()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/ganeum/calc/MainActivity;->b()J

    move-result-wide v5

    cmp-long v1, v7, v5

    if-lez v1, :cond_4

    iget-boolean v1, v2, Lcom/ganeum/calc/MainActivity;->e:Z

    if-nez v1, :cond_4

    iput-boolean v0, v2, Lcom/ganeum/calc/MainActivity;->e:Z

    new-instance v0, La/d;

    invoke-direct {v0, v2, v7, v8}, La/d;-><init>(Lcom/ganeum/calc/MainActivity;J)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual {v2, v4}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    .line 2
    :pswitch_0
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/j;

    iget-object v0, v0, La/j;->a:Lcom/ganeum/calc/MainActivity;

    iget-object v2, v0, Lcom/ganeum/calc/MainActivity;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-wide v2, v0, Lcom/ganeum/calc/MainActivity;->d:J

    invoke-virtual {v0}, Lcom/ganeum/calc/MainActivity;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-wide v1, v0, Lcom/ganeum/calc/MainActivity;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/ganeum/calc/MainActivity;->h(J)V

    goto :goto_4

    :cond_5
    iget-wide v2, v0, Lcom/ganeum/calc/MainActivity;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    const-string v2, "\uc9c0\uae08 \uc4f0\ub294 \ubc84\uc804\uc774 \ucd5c\uc2e0\uc774\uc5d0\uc694"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/ganeum/calc/MainActivity;->a()V

    :goto_4
    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, La/j;

    iget-object v0, v0, La/j;->a:Lcom/ganeum/calc/MainActivity;

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    const-string v3, "application/json"

    const-string v4, "text/plain"

    const-string v5, "application/octet-stream"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1c86

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    sget-object v1, Lcom/ganeum/calc/MainActivity;->h:[Ljava/lang/String;

    const-string v1, "window.AppInfo&&AppInfo.backupOpened(null)"

    invoke-virtual {v0, v1}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
